#/bin/bash
alias dips="docker ps -q | xargs docker inspect --format '{{ .Id }} - {{ .Name }} - {{ .NetworkSettings.IPAddress }} - {{ .NetworkSettings.Ports }}'"

echo Start Kitematic
docker run -dt --net host --name kitematic \
	   -v /tmp/.X11-unix:/tmp/.X11-unix \
	   -e DISPLAY=$DISPLAY \
	   -v $HOME/.Xauthority:/root/.Xauthority \
	   -v /tmp/.X11-unix:/tmp/.X11-unix \
	   -v /var/run/docker.sock:/var/run/docker.sock \
	   --privileged=true -t coolsun/kitematic-docker


echo Start Jenkins-Master 
docker run -dt --name Jenkins-Master -p 10.128.81.167:8080:8080 coolsun/jenkins-master

dips
