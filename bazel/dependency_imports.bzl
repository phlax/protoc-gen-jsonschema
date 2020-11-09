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

    if not native.existing_rule("com_github_sirupsen_logrus"):
        go_repository(
            name = "com_github_sirupsen_logrus",
            importpath = "github.com/sirupsen/logrus",
        )
