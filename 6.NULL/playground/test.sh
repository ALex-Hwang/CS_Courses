#!/bin/bash
pidkill()
{
	while kill -0 $1 2>/dev/null
	do
	sleep 1
	done
	echo the function you wanna execute
}

pidkill 324
