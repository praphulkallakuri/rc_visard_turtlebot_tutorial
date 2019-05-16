#!/bin/bash


executable=$1

docker run --rm \
	--device=/dev/kobuki:/dev/kobuki \
	-v $(pwd)/map:/map:rw \
	--network host \
	turtlebot_image \
	$executable 
