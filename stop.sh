#!/bin/bash

pushd $ArmarX_DIR/Core/build/bin > /dev/null
./ice-stop.sh
popd > /dev/null

pushd $ArmarX_DIR/MemoryX/build/bin > /dev/null
./mongod.sh stop
popd > /dev/null
