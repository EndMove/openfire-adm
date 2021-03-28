#!/bin/sh

echo "openfire-docker Install: post-install"

# Environement variables
OPENFIRE_DATA_PATH="/volume1/Docker/Openfire"
OPENFIRE_CONTAINER=Openfire

# Pull the container image
echo "openfire-docker Install: fetching data"
docker pull endmove/openfire:latest

# Installing creating container
echo "openfire-docker Install: creating container"
docker create -i -t --name=$OPENFIRE_CONTAINER \
  --net=host \
  -v $OPENFIRE_DATA_PATH/data:/var/lib/openfire \
  -v $OPENFIRE_DATA_PATH/log:/var/log/openfire \
  --restart unless-stopped \
  endmove/openfire:latest

# Starting container
echo "openfire-docker Install: strating container"
docker start $OPENFIRE_CONTAINER

case "$APKG_PKG_STATUS" in
  upgrade)
    OPENFIRE_IMAGE=$(docker images | grep endmove/openfire | grep none | awk '{print $3}')
    # REMOVE old docker image on UPGRADE
    echo "openfire-docker Upgrade: removing old docker image"
    echo "    - $OPENFIRE_IMAGE"
    if [ ! -z $OPENFIRE_IMAGE ]; then 
      docker rmi -f $OPENFIRE_IMAGE
    fi
    ;;
  *)
    ;;
esac

exit 0
