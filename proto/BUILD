proto_library(
    name = "test_proto",
    srcs = ["test.proto"],
)

genrule(
    name = "test_pb",
    outs = ["test.pb"],
    cmd = "$(location @com_google_protobuf//:protoc) --encode=foo.MyMessage $(location :test.proto) < $(location :test.pb.txt) > $@",
    srcs = [
        "test.proto",
        "test.pb.txt",
    ],
    tools = ["@com_google_protobuf//:protoc"],
)
