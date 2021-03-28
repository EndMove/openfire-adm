#!/bin/sh

echo "openfire-docker Uninstall: pre-uninstall"

# Environement variables
OPENFIRE_DATA_PATH="/volume1/Docker/Openfire"
OPENFIRE_CONTAINER=$(docker container ls -a | grep Openfire | awk '{print $1}')

# Force shutdown of the container and delete the image
echo "openfire-docker Uninstall: stoping and removing container"
echo "    - $OPENFIRE_CONTAINER"
if [ ! -z $OPENFIRE_CONTAINER ]; then 
  docker kill $OPENFIRE_CONTAINER
  sleep 2
  docker rm -f $OPENFIRE_CONTAINER
fi

case "$APKG_PKG_STATUS" in
  uninstall)
    OPENFIRE_IMAGE=$(docker images | grep endmove/openfire | grep latest | awk '{print $3}')
    # REMOVE docker image on uninstalling
    echo "openfire-docker Uninstall: removing docker image"
    echo "    - $OPENFIRE_IMAGE"
    if [ ! -z $OPENFIRE_IMAGE ]; then 
      docker rmi -f $OPENFIRE_IMAGE
    fi
    ;;
  upgrade)
    # UPDATE copyright and license on upgrading
    echo "openfire-docker Upgrade: removing copyright and license file to update them"
    rm -f $OPENFIRE_DATA_PATH/copyright
    rm -f $OPENFIRE_DATA_PATH/LICENSE
    ;;
  *)
    ;;
esac

exit 0
