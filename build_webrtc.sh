#/bin/sh

export WORKSPACE=`pwd`
export PATH=$PATH:$WORKSPACE/depot_tools
cd $WORKSPACE/webrtc/src
./build/install-build-deps.sh
gn gen out/Debug "--args=is_debug=true"
ninja -C out/Debug