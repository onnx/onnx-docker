FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         git \
         vim \
         libprotoc-dev \
         protobuf-compiler \
         python python-pip python-dev python-setuptools && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip; apt remove -y python-pip

RUN mkdir -p /root/programs && \
    git clone https://github.com/onnx/onnx.git /root/programs/onnx && \
    cd onnx && \
    git submodule update --init --recursive && \
    python setup.py install

WORKDIR /root/programs
