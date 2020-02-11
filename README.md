# An implementation of Google Protobuf for Smalltalk/Pharo

This repository contains support for Google Protobuf and bindings
to GRPC.

## Google Protobuf

The code includes an encoder/decoder for binary Google Protobuf
and a code generator that takes Googles protoc definition and can
generate Pharo code.

### Use protoc to generate a binary definition

```shell
protoc -o tf.pb --include_imports tensorflow/core/framework/graph.proto
```

### Generate Smalltalk code from the description

```smalltalk
| descriptor nameTable generator |
"1. Decode the 'tf.pb' file into a descriptor"
descriptor := GPBFileDescriptorSet
	  materializeFrom: 'tf.pb' asFileReference  binaryReadStream.

"2. Set-up a type/name table and apply a custom prefix to all types"
nameTable := GPBTypeNamesVisitor new.
nameTable customPrefix: 'TF_'.

"3. Set-up the class/type generator and specify the target package for the code"
generator := GPBGeneratingVisitor new
  typeNames: nameTable;
  targetPackage: 'Tensorflow-Definitions'.
  
"4. Generate types and code"
descriptor visit: nameTable.
generator visit: descriptor.
```

### Use the generated code

```smalltalk
TF_GraphDef materializeFrom: 'inception_v3_2016_08_28_frozen.pb' asFileReference binaryReadStream
```


## gRPC code

The repository includes work-in-progress bindings to the gRPC C library. This
requires at least Pharo8.0 to include FFI fixes.

TODO(zecke): Document the state of it.
