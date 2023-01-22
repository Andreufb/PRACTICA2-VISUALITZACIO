FROM nvidia/cuda:11.7.1-base-ubuntu20.04

# Set bash as the default shell
ENV SHELL=/bin/bash

# Create a working directory
WORKDIR /app/

# Build with some basic utilities
RUN apt-get update && apt-get install -y \
    python3-pip \
    apt-utils \
    vim \
    git

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip install \
    pandas \
    imageio-ffmpeg \
    python-math \
    typing \
    pygame \
    numpy \
    jupyterlab \
    scikit-image \
    matplotlib



CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
EXPOSE 8888