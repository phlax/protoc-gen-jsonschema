#!/bin/sh


echo "TESTING PROTOC BINARY!!!"

PROTO_DIR="$(dirname $1)"
JSONSCHEMA_DIR="$(dirname $2)"
ENVOY_PROTOS=$3

echo "ENVOY: $ENVOY_PROTOS"

export PATH="$PATH:$PROTO_DIR:$JSONSCHEMA_DIR"

pwd
ls

protoc --jsonschema_out=prefix_schema_files_with_package:out --proto_path=envoy/api envoy/api/envoy/config/bootstrap/v3/bootstrap.proto
