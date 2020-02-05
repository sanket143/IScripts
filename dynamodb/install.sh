#!/bin/sh

PROGRAMS_DIR=$HOME/Programs
DYNAMO_DIR=$PROGRAMS_DIR/dynamoDB
AWS_DIR=$HOME/.aws
SYSTEM_BIN="`systemd-path user-binaries`"

mkdir -p $PROGRAMS_DIR
mkdir -p $DYNAMO_DIR
mkdir -p $AWS_DIR

cp dynamodb $SYSTEM_BIN

cd $DYNAMO_DIR
wget -c "https://s3.ap-south-1.amazonaws.com/dynamodb-local-mumbai/dynamodb_local_latest.tar.gz"
tar -xvf dynamodb_local_latest.tar.gz
cd -

echo "[default]
region = ap-south-1
output = json" > $HOME/.aws/config

echo "[default]
aws_access_key_id = fakeMyKeyId
aws_secret_access_key = fakeSecretAccessKey
" >> $HOME/.aws/credentials
