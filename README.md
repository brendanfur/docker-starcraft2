docker-starcraft2
=============

### To run
```
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/joseph/starcraft:/starcraft/ -e DISPLAY=unix$DISPLAY --net=host --name starcraft starcraft
```

### Notes
You may need to run ```xhost +``` first.
