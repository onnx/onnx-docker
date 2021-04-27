FROM nvidia/cuda:10.2-cudnn8-runtime-ubuntu18.04

LABEL maintainer Xavier Tao "tao.xavier@outlook.com" 

# Get Onnruntime gpu 1.6.0
ADD https://github.com/microsoft/onnxruntime/releases/download/v1.6.0/onnxruntime-linux-x64-gpu-1.6.0.tgz  /usr/local/

# Get Onnruntime gpu 1.6.0
RUN cd /usr/local/ && \
    tar -xf onnxruntime-linux-x64-gpu-1.6.0.tgz && \
    rm onnxruntime-linux-x64-gpu-1.6.0.tgz

ENV LD_LIBRARY_PATH=/usr/local/onnxruntime-linux-x64-gpu-1.6.0/lib:${LD_LIBRARY_PATH}

ENTRYPOINT ["/bin/bash"]
