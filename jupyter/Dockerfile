FROM jupyter/scipy-notebook:latest
USER root
ARG PROPHET_VER="1.0"

RUN apt-get update
RUN apt-get -y install \
    wget \
    git \
    libc-dev

RUN pip install pip==19.1.1
RUN pip install ipython==7.5.0

RUN wget https://github.com/facebook/prophet/archive/refs/tags/v${PROPHET_VER}.tar.gz && \
    wget https://github.com/pyinstaller/pyinstaller/archive/refs/tags/v${PYINSTALLER_VER}.tar.gz && \
    for f in *.tar*; do tar xf $f && rm -rf $f; done

RUN cd prophet-${PROPHET_VER}/python && \
    pip install -r requirements.txt && \
    python setup.py install

WORKDIR /