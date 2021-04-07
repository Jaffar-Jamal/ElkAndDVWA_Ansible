#!/bin/bash

useradd -m $1
useradd -m $2
useradd -m $3
useradd -m $4
useradd -m $5
passwd $1
passwd $2
passwd $3
passwd $4
passwd $5
usermod -aG sudo $5
