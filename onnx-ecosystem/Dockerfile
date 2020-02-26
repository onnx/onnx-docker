FROM ubuntu:18.04
MAINTAINER Vinitra Swamy "viswamy@microsoft.com"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -y sudo \
	build-essential curl \
	libcurl4-openssl-dev \
	libssl-dev wget \
	python3-pip \
	git && \
	pip3 install --upgrade pip

RUN mkdir scripts && \
		cd scripts && \
		mkdir converter_scripts && \
		mkdir inference_demos
COPY converter_scripts/ scripts/converter_scripts/
COPY inference_demos/ scripts/inference_demos/
COPY requirements.txt requirements.txt

# Install Python Requirements
RUN pip3 install -r requirements.txt

WORKDIR /scripts

EXPOSE 8888

# Launch Jupyter notebook
CMD ["jupyter", "notebook", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--no-browser"]
