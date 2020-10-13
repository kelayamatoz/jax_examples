import torch

@torch.jit.script
def test_lstm():

    n_hidden_units = 128
    n_features = 128
    w_shape = (n_hidden_units, n_features)
    u_shape = (n_hidden_units, n_hidden_units)


    xt = torch.ones(n_features)
    ht = torch.ones(n_hidden_units)
    ct_1 = torch.ones(n_hidden_units)

    wf = torch.ones(w_shape)
    uf = torch.ones(u_shape)
    bf = torch.ones(n_hidden_units)

    wi = torch.ones(w_shape)
    ui = torch.ones(u_shape)
    bi = torch.ones(n_hidden_units)

    wo = torch.ones(w_shape)
    uo = torch.ones(u_shape)
    bo = torch.ones(n_hidden_units)

    wc = torch.ones(w_shape)
    uc = torch.ones(u_shape)
    bc = torch.ones(n_hidden_units)

    ft = torch.sigmoid(wf @ xt + uf @ ht + bf)
    it = torch.sigmoid(wi @ xt + ui @ ht + bi)
    ot = torch.sigmoid(wo @ xt + uo @ ht + bo)
    c_tel_t = torch.tanh(wc @ xt + uc @ ht + bc)
    ct = ft * ct_1 + it * c_tel_t
    ht_new = ot * torch.tanh(ct)
    return ct, ht_new

if __name__ == "__main__":
    print(test_lstm())