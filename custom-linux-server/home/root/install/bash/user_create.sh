#!/bin/bash

export $(grep -v 'server*' /home/root/envfiles/.env | xargs)

adduser server