load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")


def _pgj_go_dependencies():
    go_rules_dependencies()
    go_register_toolchains()

def pgj_dependency_imports():
    # Import @com_google_protobuf's dependencies.
    protobuf_deps()

    # Import rules for the Go compiler.
    _pgj_go_dependencies()

    # Setup rules_proto.
    rules_proto_dependencies()
    rules_proto_toolchains()