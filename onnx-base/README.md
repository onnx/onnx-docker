<!--- SPDX-License-Identifier: Apache-2.0 -->

# ONNX Base Docker Container

## About

This image enables new users to get started with a [published ONNX package from PyPi](https://pypi.org/project/onnx/) in a lightweight Linux-based image without worrying about dependencies.

## Usage

0. Ensure that you have Docker installed, or are using Docker for Linux containers if on Windows.

1. Obtain the ONNX base docker image. There are two ways to do this:

  - Pull the pre-built Docker image from DockerHub
    - `docker pull onnx/onnx-base`

  - Clone the [source repository](https://github.com/onnx/onnx-docker). Navigate to the onnx-docker/onnx-base folder and build the image locally with the following command.
    - `docker build . -t onnx/onnx-base`

2. Run the Docker container to launch the ONNX base image.
    - `docker run -it onnx/onnx-base`

# Contributing

This project welcomes contributions and suggestions. For details, please read through the [contributor's guide](https://github.com/onnx/onnx/blob/master/docs/CONTRIBUTING.md) and the [ONNX Open Source Code of Conduct](https://onnx.ai/codeofconduct.html).

## Acknowledgements
The [source dockerfile](https://github.com/onnx/onnx-docker/blob/master/onnx-base/Dockerfile) is being maintained in the [onnx/onnx-docker](https://github.com/onnx/onnx-docker) repository.

## License
[Apache License v2.0](https://github.com/onnx/onnx-docker/blob/master/LICENSE)
