load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = [
        "proto_package.go",
        "sourcecodeinfo.go",
        "converter.go",
        "types.go",
    ],
    importpath = "github.com/chrusty/protoc-gen-jsonschema/internal/converter",
    visibility = ["//visibility:public"],
    deps = [
        "@com_github_golang_protobuf//proto:go_default_library",
        "@com_github_golang_protobuf//protoc-gen-go/plugin:go_default_library",
        "@com_github_golang_protobuf//protoc-gen-go/descriptor:go_default_library",
        "@com_github_sirupsen_logrus//:go_default_library",
        "@com_github_xeipuuv_gojsonpointer//:go_default_library",
        "@com_github_xeipuuv_gojsonreference//:go_default_library",
        "@com_github_xeipuuv_gojsonschema//:go_default_library",
        "@com_github_iancoleman_orderedmap//:go_default_library",
        "@com_github_alecthomas_jsonschema//:go_default_library",
    ],
)
