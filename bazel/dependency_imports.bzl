load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
load("@bazel_gazelle//:deps.bzl", "go_repository")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")


def _pgj_go_dependencies():
    go_rules_dependencies()
    go_register_toolchains()
    gazelle_dependencies()


def pgj_dependency_imports():
    # Import @com_google_protobuf's dependencies.
    protobuf_deps()

    # Import rules for the Go compiler.
    _pgj_go_dependencies()

    # Setup rules_proto.
    rules_proto_dependencies()
    rules_proto_toolchains()

    go_repository(
        name = "com_github_sirupsen_logrus",
        commit = "d131c24e23baaa812461202af6d7cfa388e2d292",
        importpath = "github.com/sirupsen/logrus",
    )

    go_repository(
        name = "com_github_alecthomas_jsonschema",
        commit = "71f438968921b11c960edd17153cfe882b18b153",
        importpath = "github.com/alecthomas/jsonschema",
    )

    go_repository(
        name = "com_github_iancoleman_orderedmap",
        commit = "a07d3b89baaba9e4af38daf4871d0db4b2bcd983",
        importpath = "github.com/iancoleman/orderedmap",
    )

    go_repository(
        name = "com_github_xeipuuv_gojsonschema",
        commit = "b076d39a02e5015af0a2a96636e4cc479ecd9f45",
        importpath = "github.com/xeipuuv/gojsonschema",
    )

    go_repository(
        name = "com_github_xeipuuv_gojsonreference",
        commit = "bd5ef7bd5415a7ac448318e64f11a24cd21e594b",
        importpath = "github.com/xeipuuv/gojsonreference",
    )
