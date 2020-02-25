# What is this repository for?

To store the docker BUILD scripts of ONNX related docker images.
- [onnx-dev](onnx-dev/Dockerfile): Build ONNX from source with minimal dependencies.
- [onnx-ecosystem](onnx-ecosystem): Jupyter notebook environment for getting started quickly with ONNX models, ONNX converters, and inference using ONNX Runtime.

## Docker Image Workflow

1. Obtain the Docker images

  You can clone this repository and build your desired image.
  ```
  # onnx-developer container
  cd onnx-dev
  docker build . -t onnx-dev

  # onnx-ecosystem container
  cd onnx-ecosystem
  docker build . -t onnx-ecosystem
  ```

  Alternatively, you can pull a pre-built image from [DockerHub](https://hub.docker.com/u/onnx).
  ```
  docker pull onnx/onnx-ecosystem
  docker pull onnx/onnx-dev
  ```

2. Run the images

```
docker images
docker run -i -t onnx-dev

docker run -p 8888:8888 onnx-ecosystem
```
