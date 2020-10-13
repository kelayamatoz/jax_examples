import torch
from torch import jit

cuda0 = torch.device('cuda:0')

class LSTMCell(jit.ScriptModule):
    def __init__(self, input_size, hidden_size):
        super(LSTMCell, self).__init__()
        self.input_size = input_size
        self.hidden_size = hidden_size
        self.weight_ih = Parameter(torch.randn(4 * hidden_size, input_size), device=cuda0)
        self.weight_hh = Parameter(torch.randn(4 * hidden_size, hidden_size), device=cuda0)
        self.bias_ih = Parameter(torch.randn(4 * hidden_size), device=cuda0)
        self.bias_hh = Parameter(torch.randn(4 * hidden_size), device=cuda0)

    @jit.script_method
    def forward(self, input, state):
        # type: (Tensor, Tuple[Tensor, Tensor]) -> Tuple[Tensor, Tuple[Tensor, Tensor]]
        hx, cx = state
        gates = (torch.mm(input, self.weight_ih.t()) + self.bias_ih +
                 torch.mm(hx, self.weight_hh.t()) + self.bias_hh)
        ingate, forgetgate, cellgate, outgate = gates.chunk(4, 1)

        ingate = torch.sigmoid(ingate)
        forgetgate = torch.sigmoid(forgetgate)
        cellgate = torch.tanh(cellgate)
        outgate = torch.sigmoid(outgate)

        cy = (forgetgate * cx) + (ingate * cellgate)
        hy = outgate * torch.tanh(cy)

        return hy, (hy, cy)

def test_lstm_module_jit():
    n_hidden_units = 128
    n_features = 128
    cell = LSTMCell(n_features, n_hidden_units)
    x = torch.ones(n_features, device=cuda0)
    state = (torch.ones(n_hidden_units, device=cuda0), torch.ones(n_hidden_units, device=cuda0))
    result = cell(x, state)
    print(result)

if __name__ == "__main__":
     test_lstm_module_jit()