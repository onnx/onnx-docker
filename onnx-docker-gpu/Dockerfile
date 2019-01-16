# Using this script to build your ONNX image.
# Execute "docker build dir", where dir contains this Dockerfile. Make sure you give docker container at least 8GB memory.
# Execute "docker run -i -t image_id", where image_id is the id of the image you just generated.
# Try "python tutorial-without-mobile-part.py".

FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04

RUN echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/nvidia-ml.list

RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         cmake \
         git \
         ssh \
         vim \
         curl \
         ca-certificates \
         wget \
         unzip \
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
RUN pip install wheel ipython==5.0 numpy scipy pyyaml

RUN mkdir -p /root/programs
RUN git clone --recursive https://github.com/onnx/onnx.git /root/programs/onnx
RUN git clone --recursive https://github.com/pytorch/pytorch.git /root/programs/pytorch
RUN cd /root/programs/onnx; python setup.py develop
RUN cd /root/programs/pytorch; pip install -r "requirements.txt"; \
    NO_CUDA=0 FULL_CAFFE2=1 python setup.py build develop

WORKDIR /root/programs
