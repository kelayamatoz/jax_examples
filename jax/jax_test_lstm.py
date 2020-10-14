import jax
import jax.numpy as jnp
from jax import jit

def jax_tanh(x):
    return 2 * jax.nn.sigmoid(2 * x) - 1

@jit
def test_lstm():
    n_hidden_units = 128
    n_features = 128
    w_shape = (n_hidden_units, n_features)
    u_shape = (n_hidden_units, n_hidden_units)
    xt = jnp.ones(n_features)
    ht = jnp.ones(n_hidden_units)
    ct_1 = jnp.ones(n_hidden_units)

    wf = jnp.ones(w_shape)
    uf = jnp.ones(u_shape)
    bf = jnp.ones(n_hidden_units)

    wi = jnp.ones(w_shape)
    ui = jnp.ones(u_shape)
    bi = jnp.ones(n_hidden_units)

    wo = jnp.ones(w_shape)
    uo = jnp.ones(u_shape)
    bo = jnp.ones(n_hidden_units)

    wc = jnp.ones(w_shape)
    uc = jnp.ones(u_shape)
    bc = jnp.ones(n_hidden_units)

    ft = jax.nn.sigmoid(wf @ xt + uf @ ht + bf)
    it = jax.nn.sigmoid(wi @ xt + ui @ ht + bi)
    ot = jax.nn.sigmoid(wo @ xt + uo @ ht + bo)
    c_tel_t = jax_tanh(wc @ xt + uc @ ht + bc)
    ct = ft * ct_1 + it * c_tel_t
    ht_new = ot * jax_tanh(ct)
    return ct, ht_new


if __name__ == "__main__":
    print(test_lstm())
