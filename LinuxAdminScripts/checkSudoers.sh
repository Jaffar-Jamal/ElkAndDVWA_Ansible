#!/bin/bash

for user in $(ls /home)
do
	sudo -lU $user
done
