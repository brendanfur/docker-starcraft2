docker-starcraft2
=============

### To run
```
docker pull salisburyjoseph/starcraft2
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/$USER/starcraft:/starcraft/ -e DISPLAY=unix$DISPLAY --net=host --name starcraft salisburyjoseph/starcraft2
```

### Notes
- You may need to run ```xhost +``` first.
