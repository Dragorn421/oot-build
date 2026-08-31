FROM ubuntu:26.04
COPY orig_encrypted /orig_encrypted
ADD https://github.com/DragonMinded/libdragon/releases/download/toolchain-continuous-prerelease/gcc-toolchain-mips64-x86_64.deb gcc-toolchain-mips64-x86_64.deb

RUN apt-get update

RUN apt-get install -y wget curl
RUN apt-get install -y make git build-essential
RUN apt-get install -y python3 python3-pip python3-venv
RUN apt-get install -y libpng-dev libxml2-dev
RUN apt-get install -y clang-format-14 clang-tidy-14
RUN apt-get install -y ./gcc-toolchain-mips64-x86_64.deb

ENV N64_GCCPREFIX=/opt/libdragon

CMD [ "sh" ]
