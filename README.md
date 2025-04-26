# Run VHDL and GTKWave in a Docker container

Prerequisites:
- install Docker
- install xquartz and allow network connections
- add `export DISPLAY=:0` to your ~/.bashrc

To run:
- run xquartz
- on linux you also need to run `xhost +local:docker`
- `./run.sh <your project directory>` (local build is not necessary)
