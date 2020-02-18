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


## State of simple things

```
| channel queue stub |
 "Create a new gRPC channel to a destination."
 channel := GrpcChannel newInsecure: 'localhost:50051'.
 channel check_connectivity: 1.

 "Create a gRPC client stub for the global completionQueue."
 queue := GrpcLibrary uniqueInstance completionQueue.
 stub := GrpcClientStub initWith: channel queue: queue.

 "Make an unary call to 'SayHello' and encode a protobuf on the fly
 and wait up to one second for the completion. E.g. start the C++
 server on the other side"
 stub genericUnaryCall: '/helloworld.Greeter/SayHello' asByteArray param: (GRPC_EX_HLWHelloRequest new name: 'Smalltalk'; materialize) resultClass: GRPC_EX_HLWHelloReply timeout: 1 seconds
```

### What

This was tested on macOs against v1.19.x of gRPC (4566c2a29ebec0835643b972eb99f4306c4234a3)
installed to `/usr/local/lib/libgrpc.dylib`.


### Known issues

* ProtoBuf slots are not properly initialized on load. Fix this by running
  `PBTypeName allSubclassesDo: #resolveEncodingType` after everything is loaded.

* `GrpcLibrary startUp: true` must be called once on start up. This is fixed by having
  a baseline.

* `GrpcLibrary uniqueInstance completionQueue` polls for completion (limiting throughput
  and adds fixed latency cost).

* Test failure on Linux with v1.27.x of gRPC in the completion queue.


### Todos

* Create `BaselineOfGrpc` and load packages and run resolveEncodingType on load.
* Enable CI tests on travis-ci/github actions.
* Only `GrpcClientStub>>#genericUnaryCall:...` is implemented.
* Basic server support is missing.
* Streaming client/server is missing.
* Add completion by calling a block (in addition to the waiting on a semaphore)
* Introspection for the server (which interfaces supported)
* Windows and Linux support
* Remove polling for a plugin..
* Image suspend/resume with outstanding gRPC calls.
* Generate server and client stubs based on the service definition.
