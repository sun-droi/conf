docker run -dt --net host --name kitematic \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=$DISPLAY \
	-v $HOME/.Xauthority:/root/.Xauthority \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /var/run/docker.sock:/var/run/docker.sock \
	--privileged=true -t coolsun/kitematic-docker
