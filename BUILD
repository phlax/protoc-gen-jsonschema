load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_binary(
    name = "protoc-gen-jsonschema",
    embed = [":go_default_library"],
    importpath = "github.com/chrusty/protoc-gen-jsonschema",
    visibility = ["//visibility:public"],
)
