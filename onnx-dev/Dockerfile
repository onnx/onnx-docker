FROM python:3.7-slim
MAINTAINER Vinitra Swamy "viswamy@microsoft.com"
RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         git \
         vim \
         libprotoc-dev \
         protobuf-compiler \
         cmake \
         ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/programs && \
    git clone https://github.com/onnx/onnx /root/programs/onnx && \
    cd /root/programs/onnx && \
    git submodule update --init --recursive && \
    python setup.py install

WORKDIR /root/programs
ENTRYPOINT ["/bin/bash"]
