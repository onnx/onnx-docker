FROM ubuntu:16.04
MAINTAINER Vinitra Swamy "viswamy@microsoft.com"

RUN apt-get update && \
	apt-get install -y sudo \
	build-essential curl \
	libcurl4-openssl-dev \
	libssl-dev wget \
	python 3.6 python3-pip \
	python3-dev git
RUN pip3 install --upgrade pip

RUN mkdir scripts
RUN cd scripts
RUN mkdir converter_scripts
RUN mkdir inference_demos
COPY converter_scripts/ scripts/converter_scripts/
COPY inference_demos/ scripts/inference_demos/
COPY requirements.txt requirements.txt

# Install Python Requirements
RUN pip3 install -r requirements.txt

WORKDIR /scripts

EXPOSE 8888

# Launch Jupyter notebook
CMD ["jupyter", "notebook", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--no-browser"]
