#!/bin/bash

pushd $ArmarX_DIR/Core/build/bin > /dev/null
./ice-start.sh
popd > /dev/null

pushd $ArmarX_DIR/MemoryX/build/bin > /dev/null
./mongod.sh start
popd > /dev/null
