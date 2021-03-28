#!/bin/sh

# Environement variables
OPENFIRE_CONTAINER=Openfire

case "$1" in
  start)
    # Starting openfire
    echo "openfire-docker Start: Starting service..."
    docker start $OPENFIRE_CONTAINER
    sleep 3
    ;;
  stop)
    # Stopping openfire
    echo "openfire-docker Stop: Stopping service..."
    docker stop $OPENFIRE_CONTAINER
    sleep 3
    ;;
  relaod)
    # Reloading openfire
    echo "openfire-docker Reload: Reloading service..."
    docker stop $OPENFIRE_CONTAINER
    sleep 6
    docker start $OPENFIRE_CONTAINER
    sleep 3
    ;;
  *)
    echo "usage: $0 {start|stop|reload}"
    exit 1
    ;;
esac

exit 0