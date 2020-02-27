FROM python:3.7-slim
MAINTAINER Vinitra Swamy "viswamy@microsoft.com"
RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential=12.6 \
         git=1:2.20.1-2+deb10u1 \
         vim=2:8.1.0875-5 \
         libprotoc-dev=3.6.1.3-2 \
         protobuf-compiler=3.6.1.3-2 \
         python-pip=18.1-5 \
         ca-certificates=20190110 && \
    rm -rf /var/lib/apt/lists/*

RUN pip install onnx==1.6.0

ENTRYPOINT ["/bin/bash"]
