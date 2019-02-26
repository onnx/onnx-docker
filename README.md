# What is this repository for?

To store the docker BUILD scripts of ONNX related docker images.
- [onnx-docker-cpu](onnx-docker-cpu/Dockerfile): Image with ONNX, PyTorch, Tensorflow support
- [onnx-docker-gpu](onnx-docker-gpu/Dockerfile): Image with ONNX, PyTorch (CUDA), Caffe2 support
- [onnx-ecosystem](onnx-ecosystem): Jupyter notebook environment for getting started quickly with ONNX models, ONNX converters, and inference using ONNX Runtime.

## Docker Image Workflow

1. Obtain the Docker images

  You can clone this repository and build your desired image.
  ```
  # onnx-docker-cpu container
  docker build onnx-docker/onnx-docker-cpu

  # onnx-docker-gpu container
  docker build onnx-docker/onnx-docker-gpu

  # onnx-ecosystem container
  cd onnx-ecosystem
  docker build . -t onnx-ecosystem
  ```

  Alternatively, you can pull a pre-built image from [DockerHub](https://hub.docker.com/u/onnx).
  ```
  docker pull onnx/onnx-docker:branch-name

  docker pull onnx/onnx-ecosystem
  ```

2. Run the images

```
docker images
docker run -i -t image_id

docker run -p 8888:8888 onnx-ecosystem
```
