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

echo_and_run cd "/home/ncrl/ncrl_robotics/catkin_ws/src/finalproject/rotors_simulator/rqt_rotors"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ncrl/ncrl_robotics/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ncrl/ncrl_robotics/catkin_ws/install/lib/python2.7/dist-packages:/home/ncrl/ncrl_robotics/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ncrl/ncrl_robotics/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/ncrl/ncrl_robotics/catkin_ws/src/finalproject/rotors_simulator/rqt_rotors/setup.py" \
     \
    build --build-base "/home/ncrl/ncrl_robotics/catkin_ws/build/finalproject/rotors_simulator/rqt_rotors" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ncrl/ncrl_robotics/catkin_ws/install" --install-scripts="/home/ncrl/ncrl_robotics/catkin_ws/install/bin"
