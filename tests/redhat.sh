#!/bin/bash

DOCKER_ID=$(
    docker run \
           --rm \
           --tty \
           --detach \
           --privileged \
           --volume $(pwd):/repo \
           --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
           -e ANSIBLE_VER=${ANSIBLE_VER} \
           -e container=docker \
           ${DOCKER_IMG} \
           /usr/sbin/init
         )

docker exec -ti ${DOCKER_ID} /bin/bash -c "cd /repo/tests; ./test.sh"
code=$?

docker kill ${DOCKER_ID}

exit $code
