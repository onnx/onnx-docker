<!--- SPDX-License-Identifier: Apache-2.0 -->

# [<b>Notice</b>] We have stopped development of onnx-docker. This repo and related DockerHub won't be updated anymore. To install newer ONNX, you can get it from [PyPI](https://pypi.org/project/onnx/) or [conda-forge](https://anaconda.org/conda-forge/onnx). For more installation details, please check the [README.md](https://github.com/onnx/onnx#installation) in the onnx repo.

# What is this repository for?

To store the docker BUILD scripts of ONNX related docker images.
- [onnx-base](onnx-base): Use published ONNX package from PyPi with minimal dependencies.
- [onnx-dev](onnx-dev): Build ONNX from source with minimal dependencies.
- [onnx-ecosystem](onnx-ecosystem): Jupyter notebook environment for getting started quickly with ONNX models, ONNX converters, and inference using ONNX Runtime.

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
```
