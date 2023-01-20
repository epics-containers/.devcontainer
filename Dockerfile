# This file is for use as a .vscode devcontainer
# The devcontainer should run as root and use user-mode podman or
# docker with user namespaces.
#
# This Dockerfile is built locally when creating a devcontainer,
# it is intended for individual developer customization

# UPDATE this version as needed
FROM ghcr.io/epics-containers/dev-e7:0.2

ENV PYTHON_VERSION 3.10
ENV VIRTUALENV=/venv

# install required python version (from deadsnakes provided by dev-u22)
# uncomment below when not using python3.10 (which is default for ubuntu 22.04)
# RUN DEBIAN_FRONTEND=noninteractive \
#     apt-get -y install python${PYTHON_VERSION} python${PYTHON_VERSION}-venv

# set up a global virtual environ for all projects in the container
RUN python${PYTHON_VERSION} -m venv ${VIRTUALENV}
ENV PATH=${VIRTUALENV}/bin:$PATH

# make sure we have the latest pip
RUN pip install --upgrade pip
# install epics containers python tools
RUN pip install python3-pip-skeleton[dev] epics-containers-cli

# create the cli-tools subcontainer launchers
ENV PATH=${PATH}:/cli-tools/tools
RUN git clone https://github.com/epics-containers/cli-tools.git





