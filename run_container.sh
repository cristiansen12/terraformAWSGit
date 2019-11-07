#!/bin/bash

docker image build . -t dev-img
docker run -d -it --name dev dev-img
