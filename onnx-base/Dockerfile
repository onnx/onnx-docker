FROM python:3.7-slim
MAINTAINER Vinitra Swamy "viswamy@microsoft.com"
RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         git \
         vim \
         libprotoc-dev \
         protobuf-compiler \
         python-pip \
         ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN pip install onnx

ENTRYPOINT ["/bin/bash"]
