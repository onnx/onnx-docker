<!--- SPDX-License-Identifier: Apache-2.0 -->

# What is this repository for?

To store the docker BUILD scripts of ONNX related docker images.
- [onnx-base](onnx-base): Use published ONNX package from PyPi with minimal dependencies.
- [onnx-dev](onnx-dev): Build ONNX from source with minimal dependencies.
- [onnx-ecosystem](onnx-ecosystem): Jupyter notebook environment for getting started quickly with ONNX models, ONNX converters, and inference using ONNX Runtime.
- [onnxruntime-gpu-1.6-python](onnxruntime-gpu1.6-python): CUDA 10.2 / onnxruntime-gpu 1.6 docker for python.
- [onnxruntime-gpu-1.7-python](onnxruntime-gpu1.7-python): CUDA 11.0.3 / onnxruntime-gpu 1.7 docker for python.
- [onnxruntime-gpu-1.6-c](onnxruntime-gpu1.6-c): CUDA 10.2 / onnxruntime-gpu 1.6 docker for c.
- [onnxruntime-gpu-1.7-c](onnxruntime-gpu1.7-c): CUDA 11.0.3 / onnxruntime-gpu 1.7 docker for c.

## Docker Image Workflow

1. Obtain the Docker images

You can clone this repository and build your desired image.

  ```
  # onnx-base container
  cd onnx-base
  docker build . -t onnx-base

  # onnx-developer container
  cd onnx-dev
  docker build . -t onnx-dev

  # onnx-ecosystem container
  cd onnx-ecosystem
  docker build . -t onnx-ecosystem

  # onnxruntime-gpu1.6-python container
  cd onnxruntime-gpu1.6-python
  docker build . -t onnxruntime-gpu1.6-python
  ```

Alternatively, you can pull a pre-built image from [DockerHub](https://hub.docker.com/u/onnx).

  ```
  docker pull onnx/onnx-base
  docker pull onnx/onnx-dev
  docker pull onnx/onnx-ecosystem
  ```

2. Run the images

```
docker images

docker run -it onnx-base
docker run -it onnx-dev
docker run -p 8888:8888 onnx-ecosystem
docker run --gpus all -it --ipc=host onnxruntime-gpu1.6-python
```
