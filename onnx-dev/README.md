# ONNX Developer Docker Container

## About

This tool enables developers to quickly get started with an ONNX build from source in a lightweight Linux-based image without worrying about dependencies.

## Usage

0. Ensure that you have Docker installed, or are using Docker for Linux containers if on Windows.

1. Obtain the ONNX ecosystem docker image. There are two ways to do this:

  - Pull the pre-built Docker image from DockerHub
    - `docker pull onnx/onnx-dev`

  - Clone the [source repository](https://github.com/onnx/onnx-docker). Navigate to the onnx-docker/onnx-dev folder and build the image locally with the following command.
    - `docker build . -t onnx/onnx-dev`

2. Run the Docker container to launch the ONNX developer image.
    - `docker run -it onnx/onnx-dev`

# Contributing

This project welcomes contributions and suggestions. For details, visit the [ONNX Open Source Code of Conduct](https://onnx.ai/codeofconduct.html).

## Acknowledgements
The [source dockerfile](https://github.com/onnx/onnx-docker/blob/master/onnx-dev/Dockerfile) is being maintained in the [onnx/onnx-docker](https://github.com/onnx/onnx-docker) repository.

## License
[MIT License](../LICENSE)
