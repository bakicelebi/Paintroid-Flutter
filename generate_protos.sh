cd lib/io/src/serialization/proto || exit
mkdir output
protoc --dart_out=output --proto_path=schema $(find schema -iname "*.proto") google/protobuf/any.proto