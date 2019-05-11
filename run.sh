#!/bin/bash
./build.sh
docker stop tellstick
docker rm tellstick

docker run -d --device=/dev/bus/usb --name tellstick \
  -v /srv/tellstick/config.yaml:/tellstick/config.yaml \
	 adddrian/tellstick
