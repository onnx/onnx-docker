# What is this repository for?

To store the docker BUILD scripts of ONNX related docker images.

## Build the images
docker build onnx-docker/onnx-docker-gpu

docker build onnx-docker/onnx-docker-cpu

## Update the images
docker tag <image-id> onnx/onnx-docker:<branch-name>
docker push onnx/onnx-docker:<branch-name>

## Pull the images
docker pull onnx/onnx-docker:<branch-name>
