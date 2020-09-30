load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def pgj_dependencies():
    if not native.existing_rule("io_bazel_rules_go"):
        http_archive(
            name = "io_bazel_rules_go",
            sha256 = "608bb3e3788a21aa0653faaa6a3e00ddf806e26aa97a6f0d960ace2b2c958950",
            strip_prefix = "rules_go-0.23.3",
            urls = ["https://github.com/bazelbuild/rules_go/archive/v0.23.3.tar.gz"],
        )

    if not native.existing_rule("com_google_protobuf"):
        http_archive(
            name = "com_google_protobuf",
            url = "https://github.com/protocolbuffers/protobuf/archive/v3.11.4.tar.gz",
            sha256 = "a79d19dcdf9139fa4b81206e318e33d245c4c9da1ffed21c87288ed4380426f9",
            strip_prefix = "protobuf-3.11.4",
        )
