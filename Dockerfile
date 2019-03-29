FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  build-essential \
  python3-dev \
  python3-pip \
  python3-venv \
  cmake

COPY . /app

WORKDIR /app/build
RUN pip3 install conan --upgrade && \
  conan profile new default --detect && \
  conan profile update settings.compiler.libcxx=libstdc++11 default && \
  conan user && \
  conan install .. && \
  cmake .. -Dtest=ON && \
  cmake --build . -- -j2 && \
  ctest -V
