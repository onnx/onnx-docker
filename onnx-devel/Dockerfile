FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         git \
         vim \
         libprotoc-dev \
         protobuf-compiler \
         cmake \
         python3 python3-pip python3-dev python3-setuptools && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip; apt remove -y python-pip

RUN mkdir -p /root/programs && \
    git clone https://github.com/onnx/onnx.git /root/programs/onnx && \
    cd /root/programs/onnx && \
    git submodule update --init --recursive && \
    python3 setup.py install

WORKDIR /root/programs
