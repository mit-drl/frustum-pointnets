# TF1.2
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python3.6/dist-packages/tensorflow/include -I /usr/local/cuda-10.2/include -lcudart -L /usr/local/cuda-10.2/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# Could use these to dynamically locate tensorflow package used by python3
# TF_INC=$(python3 -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')
# TF_LIB=$(python3 -c 'import tensorflow as tf; print(tf.sysconfig.get_lib())')

# Creating link to libtensorflow_framework.so.1 where ld can find it
ln -s /usr/local/lib/python3.6/dist-packages/tensorflow_core/libtensorflow_framework.so.1 /usr/lib/libtensorflow_framework.so

# TF1.4
g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python3.6/dist-packages/tensorflow_core/include -I /usr/local/cuda-10.2/include -I /usr/local/lib/python3.6/dist-packages/tensorflow_core/include/external/nsync/public -lcudart -L /usr/local/cuda-10.2/lib64/ -L /usr/local/lib/python3.6/dist-packages/tensorflow_core -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0

