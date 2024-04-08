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

echo_and_run cd "/home/kduval/f1Tenth_UCSB_2024/src/twist_to_ackermann"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/kduval/f1Tenth_UCSB_2024/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/kduval/f1Tenth_UCSB_2024/install/lib/python3/dist-packages:/home/kduval/f1Tenth_UCSB_2024/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/kduval/f1Tenth_UCSB_2024/build" \
    "/usr/bin/python3" \
    "/home/kduval/f1Tenth_UCSB_2024/src/twist_to_ackermann/setup.py" \
     \
    build --build-base "/home/kduval/f1Tenth_UCSB_2024/build/twist_to_ackermann" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/kduval/f1Tenth_UCSB_2024/install" --install-scripts="/home/kduval/f1Tenth_UCSB_2024/install/bin"
