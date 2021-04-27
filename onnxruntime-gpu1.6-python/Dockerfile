FROM nvidia/cuda:10.2-cudnn8-runtime-ubuntu18.04

LABEL maintainer Xavier Tao "tao.xavier@outlook.com" 

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ccache \
    cmake \
    git \
    vim \
    libprotoc-dev \
    protobuf-compiler \
    curl \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

ENV PATH /opt/conda/bin:$PATH

ARG PYTHON_VERSION=3.8
RUN curl -fsSL -o ~/miniconda.sh -O  https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
    chmod +x ~/miniconda.sh && \
    ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    /opt/conda/bin/conda install -y python=${PYTHON_VERSION} conda-build pyyaml numpy && \
    /opt/conda/bin/conda clean -ya

RUN pip install onnxruntime==1.6.0 onnxruntime-gpu==1.6.0 

ENTRYPOINT ["/bin/bash"]
