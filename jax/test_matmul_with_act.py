import jax
import jax.numpy as jnp
from jax import jit


@jit
def matmul_with_act():
    x = jnp.ones((128, 128), dtype="float32")
    y = jnp.ones((128), dtype="float32")
    z = jnp.ones((128), dtype="float32")
    matmul = x * y

    result = jax.nn.sigmoid(matmul + z)
    return result


if __name__ == "__main__":
    matmul_with_act()
