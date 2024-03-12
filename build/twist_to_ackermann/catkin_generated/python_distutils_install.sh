#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/f1tenth/sandbox/src/twist_to_ackermann"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/f1tenth/sandbox/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/f1tenth/sandbox/install/lib/python3/dist-packages:/home/f1tenth/sandbox/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/f1tenth/sandbox/build" \
    "/usr/bin/python3" \
    "/home/f1tenth/sandbox/src/twist_to_ackermann/setup.py" \
     \
    build --build-base "/home/f1tenth/sandbox/build/twist_to_ackermann" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/f1tenth/sandbox/install" --install-scripts="/home/f1tenth/sandbox/install/bin"
