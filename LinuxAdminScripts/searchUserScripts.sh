#!/bin/bash

#user dir

for user in $(ls /home);

do
        echo $user
        for item in $(sudo find /home/$user -iname '*.sh');
        do
        echo -e "Found a script in $user's home folder! \n$item"
        done
done

