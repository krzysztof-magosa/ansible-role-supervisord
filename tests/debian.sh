#!/bin/bash

exec docker run \
       --rm \
       --tty \
       --interactive \
       --privileged \
       --volume $(pwd):/repo \
       --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
       -e ANSIBLE_VER=${ANSIBLE_VER} \
       -e container=docker \
       ${DOCKER_IMG} \
       /bin/bash -c "cd /repo/tests; ./test.sh"
