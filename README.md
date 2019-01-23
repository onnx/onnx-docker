# What is this repository for?

To store the docker BUILD scripts of ONNX related docker images.
- onnx-docker-cpu
- onnx-docker-gpu
- onnx-ecosystem: Jupyter notebook environment for getting started quickly with ONNX models, ONNX converters, and inference using ONNX runtime.

## Build the images
docker build onnx-docker/onnx-docker-gpu
docker build onnx-docker/onnx-docker-cpu
docker build -t onnx-ecosystem Dockerfile .

## Run the images
docker run -i -t image_id
docker run -p 8888:8888 onnx-ecosystem

## Update the images
docker tag image-id onnx/onnx-docker:branch-name
docker push onnx/onnx-docker:branch-name

## Pull the images
docker pull onnx/onnx-docker:branch-name
