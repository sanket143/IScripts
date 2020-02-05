#!/bin/sh

PROGRAMS_DIR=$HOME/Programs
DYNAMO_DIR=$PROGRAMS_DIR/dynamoDB
SYSTEM_BIN="`systemd-path user-binaries`"

mkdir -p $PROGRAMS_DIR
mkdir -p $DYNAMO_DIR
cp dynamodb $SYSTEM_BIN

cd $DYNAMO_DIR
wget -c "https://s3.ap-south-1.amazonaws.com/dynamodb-local-mumbai/dynamodb_local_latest.tar.gz"
tar -xvf dynamodb_local_latest.tar.gz

cd -
