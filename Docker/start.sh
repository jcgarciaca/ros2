## docker creation
docker build --network="host" -t jcgarciaca/ros2:latest .

docker run -it --rm \
    --name ros2 \
    --net="host" \
    --workdir="/home/$USER" \
    -v "$(dirname $PWD)":/home/$USER \
    --user=$(id -u $USER):$(id -g $USER) \
    --env="DISPLAY" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    jcgarciaca/ros2:latest
