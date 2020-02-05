#!/bin/sh

PROGRAMS_DIR=$HOME/Programs
DYNAMO_DIR=$PROGRAMS_DIR/dynamoDB
SYSTEM_BIN="`systemd-path user-binaries`"

rm -rf $DYNAMO_DIR
rm -f $SYSTEM_BIN/dynamodb
