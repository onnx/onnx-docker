FROM ubuntu:16.04

LABEL com.nvidia.volumes.needed="nvidia_driver"
RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \ 
         git \
         ssh \
         vim \
         unzip \
         curl \
         wget \
         ca-certificates \
         libjpeg-dev \
         libpng-dev \
         libgflags-dev \
         libgoogle-glog-dev \
         liblmdb-dev \
         libprotobuf-dev \
         protobuf-compiler \
         cmake \
         python python-pip python-dev python-setuptools && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip; apt remove -y python-pip
RUN pip install wheel ipython==5.0.0 numpy scipy pyyaml pytest tabulate ninja future tf-nightly torchvision

RUN mkdir -p /root/programs
RUN git clone --recursive https://github.com/Ac2zoom/onnx.git /root/programs/onnx
RUN git clone --recursive https://github.com/pytorch/pytorch.git /root/programs/pytorch
RUN git clone https://github.com/onnx/onnx-tensorflow.git /root/programs/onnx-tensorflow
RUN cd /root/programs/onnx; git submodule update --init; git checkout scoreboard; python setup.py develop
RUN cd /root/programs/pytorch; pip install -r "requirements.txt"; \
    NO_CUDA=1 FULL_CAFFE2=1 python setup.py build_deps develop
RUN cd /root/programs/onnx-tensorflow; pip install -e .

WORKDIR /root/programs
