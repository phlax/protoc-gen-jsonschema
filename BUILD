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
    importpath = "github.com/envoyproxy/protoc-gen-validate",
    visibility = ["//visibility:private"],
    deps = [],
)
