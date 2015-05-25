args="$@"
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
CARD=/dev/dri/card0
touch $XAUTH
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run \
	-v $XSOCK:$XSOCK:rw \
	-v $XAUTH:$XAUTH:rw \
	--device=$CARD:$CARD \
	-e DISPLAY=$DISPLAY \
	-e XAUTHORITY=$XAUTH \
	$args
