# Run VHDL and GTKWave in a Docker container

Prerequesites:
- install Docker
- install xquartz and allow network connections
- add `export DISPLAY=:0` to your ~/.bashrc
- `./build.sh`

To run:
- run xquartz
- run `xhost +127.0.0.1`
- `./run.sh <your project directory>`
