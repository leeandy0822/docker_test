#!/bin/sh
docker build --rm --build-arg USER_ID=$UID -t test .
