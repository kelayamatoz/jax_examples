import jax.numpy as jnp
from jax import jit, random
import jax.experimental.stax as stax

@jit
def test_conv2d():
    N = 32
    H = 64
    W = 64
    C = 16
    C_o = 32
    k_h = 3
    k_w = 3

    net_init, net_apply = stax.serial(
        stax.Conv(C_o, (k_h, k_w), padding='SAME'),
        stax.Relu,
        stax.MaxPool((2, 2))
    )

    # Initialize parameters, not committing to a batch shape
    rng = random.PRNGKey(0)
    in_shape = (N, H, W, C)
    out_shape, net_params = net_init(rng, in_shape)

    # Apply network to dummy inputs
    inputs = jnp.zeros((N, H, W, C))
    predictions = net_apply(net_params, inputs)
    print("output shape = {}".format(out_shape))
    return predictions

if __name__ == "__main__":
    test_conv2d()