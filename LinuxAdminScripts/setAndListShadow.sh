#!/bin/bash

chmod u=rw,g=,o= /etc/shadow
chmod u=rw,g=,o= /etc/gshadow
chmod u=rw,g=r,o=r /etc/group
chmod u=rw,g=r,o=r /etc/passwd
ls -l /etc/shadow
ls -l /etc/gshadow
ls -l /etc/group
ls -l /etc/passwd 
