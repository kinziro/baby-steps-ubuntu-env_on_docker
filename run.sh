# GPUの場合
#nvidia-docker run --rm --name baby-steps-container -it \
#									-e DISPLAY=$DISPLAY \
#									-v 'localdir':/home/developer/baby-steps-of-rl-ja \
#									-v /tmp/.X11-unix/:/tmp/.X11-unix \
#									baby-steps-env bash

# CPUの場合
docker run --rm --name baby-steps-container -it \
									-e DISPLAY=$DISPLAY \
									-v 'localdir':/home/developer/baby-steps-of-rl-ja \
									-v /tmp/.X11-unix/:/tmp/.X11-unix \
									baby-steps-env bash
