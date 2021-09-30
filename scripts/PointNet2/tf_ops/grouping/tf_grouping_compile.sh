#/bin/bash
/usr/local/cuda-10.0/bin/nvcc tf_grouping_g.cu -o tf_grouping_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
/usr/bin/g++-4.8 -std=c++11 tf_grouping.cpp tf_grouping_g.cu.o -o tf_grouping_so.so -shared -fPIC -I/home/mcorsaro/.virtualenvs/tf-1.14/lib/python2.7/site-packages/tensorflow/include/ -I/usr/local/cuda-10.0/include -I/home/mcorsaro/.virtualenvs/tf-1.14/lib/python2.7/site-packages/tensorflow/include/external/nsync/public -lcudart -L/usr/local/cuda-10.0/lib64/ -L/home/mcorsaro/.virtualenvs/tf-1.14/lib/python2.7/site-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0