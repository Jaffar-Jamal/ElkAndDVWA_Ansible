#!/bin/bash

# executables

execs=$(find /home -type f -perm 777)

echo execs

for exec in ${execs[@]};
do
ls -lah $exec
done

