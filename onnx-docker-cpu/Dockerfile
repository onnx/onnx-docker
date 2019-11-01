FROM ubuntu:16.04

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
         python python3-pip python3-dev && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip setuptools; apt remove -y python3-pip
RUN pip3 install wheel ipython==5.0.0 numpy scipy pyyaml pytest tabulate ninja future tensorflow==1.15 torchvision

RUN mkdir -p /root/programs
RUN git clone --recursive https://github.com/onnx/onnx.git /root/programs/onnx
RUN git clone --recursive https://github.com/pytorch/pytorch.git /root/programs/pytorch
RUN git clone https://github.com/onnx/onnx-tensorflow.git /root/programs/onnx-tensorflow
RUN cd /root/programs/onnx && python3 setup.py develop
RUN pip3 install numpy && pip3 install --pre torch torchvision -f https://download.pytorch.org/whl/nightly/cpu/torch_nightly.html
RUN cd /root/programs/onnx-tensorflow && pip3 install -e .

WORKDIR /root/programs
