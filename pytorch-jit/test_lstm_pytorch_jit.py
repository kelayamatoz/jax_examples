import torch

@torch.jit.script
def test_lstm():
    cuda0 = torch.device('cuda:0')
    n_hidden_units = 128
    n_features = 128
    w_shape = (n_hidden_units, n_features)
    u_shape = (n_hidden_units, n_hidden_units)


    xt = torch.ones(n_features, device=cuda0)
    ht = torch.ones(n_hidden_units, device=cuda0)
    ct_1 = torch.ones(n_hidden_units, device=cuda0)

    wf = torch.ones(w_shape, device=cuda0)
    uf = torch.ones(u_shape, device=cuda0)
    bf = torch.ones(n_hidden_units, device=cuda0)

    wi = torch.ones(w_shape, device=cuda0)
    ui = torch.ones(u_shape, device=cuda0)
    bi = torch.ones(n_hidden_units, device=cuda0)

    wo = torch.ones(w_shape, device=cuda0)
    uo = torch.ones(u_shape, device=cuda0)
    bo = torch.ones(n_hidden_units, device=cuda0)

    wc = torch.ones(w_shape, device=cuda0)
    uc = torch.ones(u_shape, device=cuda0)
    bc = torch.ones(n_hidden_units, device=cuda0)

    ft = torch.sigmoid(wf @ xt + uf @ ht + bf)
    it = torch.sigmoid(wi @ xt + ui @ ht + bi)
    ot = torch.sigmoid(wo @ xt + uo @ ht + bo)
    c_tel_t = torch.tanh(wc @ xt + uc @ ht + bc)
    ct = ft * ct_1 + it * c_tel_t
    ht_new = ot * torch.tanh(ct)
    return ct, ht_new

if __name__ == "__main__":
    print(test_lstm())
    print(test_lstm.code)
