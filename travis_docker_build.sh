#!/bin/bash

docker build -t jhyeom26/travis-test .
docker run jhyeom26/travis-test
