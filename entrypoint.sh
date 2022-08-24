#!/usr/bin/env bash
set -e
CODE_PATH="$1"
. $IDF_PATH/export.sh
cd "${CODE_PATH}"
idf.py build
cd build
zip --junk-paths binaries mqtt_tcp.bin build/bootloader/bootloader.bin build/partition_table/partition-table.bin
