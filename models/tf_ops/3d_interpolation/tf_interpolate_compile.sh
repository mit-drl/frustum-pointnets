# TF1.2
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python3.6/dist-packages/tensorflow/include -I /usr/local/cuda-10.2/include -lcudart -L /usr/local/cuda-10.2/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

TF_INC=$(python3 -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')
TF_LIB=$(python3 -c 'import tensorflow as tf; print(tf.sysconfig.get_lib())')

# TF1.4
g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python3.6/dist-packages/tensorflow/include -I /usr/local/cuda-10.2/include -I /usr/local/lib/python3.6/dist-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-10.2/lib64/ -L/usr/local/lib/python3.6/dist-packages/tensorflow -I$TF_INC/external/nsync/public -L$TF_LIB -ltensorflow_framework
