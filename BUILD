load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_binary(
    name = "protoc_gen_jsonschema",
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
        "@com_github_sirupsen_logrus:go_default_library",
    ],
)
