FROM python:3.10.5-slim-buster

ENV ME=docker
ENV USER_UID=1000 USER_GID=1000

# gcc, libpython, and libpcre are for building uwsgi
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        python3-tk \
        vim \
        sudo \
        git \
        ; \
        apt-get clean; \
        rm -rf /var/lib/apt/lists/*;

# Add new user without prompting for password or adding the gecos info
RUN adduser --disabled-password --gecos "" docker
# Add our user to sudo group
RUN adduser docker sudo

# Ensure sudo group users are not
# asked for a password when using
# sudo command by ammending sudoers file
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Change to our user and install our docker requirements
USER docker
ENV PATH "${PATH}:/home/docker/.local/bin"
COPY requirements.txt /home/docker/requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install --user -r /home/docker/requirements.txt

