#!/bin/bash
docker stop maxvpn
docker rm maxvpn
docker image rm maxvpn

docker build -t maxvpn .