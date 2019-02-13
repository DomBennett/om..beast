# Example host distro
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl wget default-jre default-jdk build-essential autoconf automake \
    libtool git pkg-config

# Installing BEAGLE
RUN git clone --depth=1 https://github.com/beagle-dev/beagle-lib.git &&\
    cd beagle-lib  &&\
    ./autogen.sh &&\
    ./configure --prefix=$HOME &&\
    make install && export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH
    
# Installing BEAST
# https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8
RUN curl -s https://api.github.com/repos/beast-dev/beast-mcmc/releases/latest \
    | grep "browser_download_url.*tgz" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -qi -

RUN tar -zxvf BEASTv*.tgz && mv BEAST*/ BEAST && rm BEAST*.tgz

RUN export PATH=$PATH:$HOME/BEAST/bin/

# outsider *requires* working_dir
RUN mkdir /working_dir
WORKDIR /working_dir