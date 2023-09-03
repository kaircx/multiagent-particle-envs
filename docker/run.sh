SCRIPT_PATH="$(cd "$(dirname "$0")" && pwd -P)"
docker run -it --privileged --gpus all --net host -v /tmp/.X11-unix:/tmp/.X11-unix -v $SCRIPT_PATH/../:/root/multiagent-particle-envs/ --name particle_env particle_env:latest 

