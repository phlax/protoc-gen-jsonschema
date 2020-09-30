
load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

sh_binary(
    name = "run-protoc-test",
    srcs = ["run-protoc-test.sh"],
    data = [
        "//:protoc-gen-jsonschema",
        "@com_google_protobuf//:protoc",
        "@envoy//api:v3_protos",
    ],
    args = [
        "$(location :protoc-gen-jsonschema)",
        "$(location @com_google_protobuf//:protoc)",
        "$(location @envoy//api:v3_protos)",
    ],
)

go_binary(
    name = "protoc-gen-jsonschema",
    embed = [":go_default_library"],
    importpath = "github.com/chrusty/protoc-gen-jsonschema",
    visibility = ["//visibility:public"],
)


go_library(
    name = "go_default_library",
    srcs = ["cmd/protoc-gen-jsonschema/main.go"],
    importpath = "github.com/chrusty/protoc-gen-jsonschema",
    visibility = ["//visibility:private"],
    deps = [
        "@com_github_golang_protobuf//proto:go_default_library",
        "@com_github_golang_protobuf//protoc-gen-go/plugin:go_default_library",
        "@com_github_sirupsen_logrus//:go_default_library",
        "//internal/converter:go_default_library"
    ],
)
