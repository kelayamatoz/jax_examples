import tensorflow as tf
import numpy as np

def test_cudnn_lstm():
    n_units = 128
    n_features = 128
    in_vector = tf.constant(np.ones((1, 1, 128)), dtype="float32")
    cell = tf.keras.layers.LSTM(n_units)
    return cell(in_vector)

if __name__ == "__main__":
    print(test_cudnn_lstm())