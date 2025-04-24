#!/bin/bash

MOUNT_SRC=${1:-$PWD}          # ${var:-default}

echo "Mounting host path: $MOUNT_SRC -> /work"

docker run -it --rm \
  -e DISPLAY=host.docker.internal:0 \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v "$MOUNT_SRC":/work -w /work \
  ghcr.io/jumpingsloth/ghdl-gtkwave
