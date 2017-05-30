package(default_visibility = ["//visibility:public"])

cc_library(
    name = "malloc",
)

cc_library(
    name = "stl",
)

filegroup(
    name = "empty",
    srcs = [],
)

filegroup(
    name = "cc-xcwrapper",
    srcs = ["cc-xcwrapper.sh"],
)

filegroup(
    name = "libtool-xcwrapper",
    srcs = ["libtool-xcwrapper.sh"],
)

filegroup(
    name = "tool-wrappers",
    srcs = [
        ":cc-xcwrapper",
        ":libtool-xcwrapper",
    ],
)

# This is the entry point for --crosstool_top.  Toolchains are found
# by lopping off the name of --crosstool_top and searching for
# the "${CPU}" entry in the toolchains attribute.
cc_toolchain_suite(
    name = "toolchain",
    toolchains = {
        "darwin|compiler": ":cc-compiler-xcode",
        "ios_x86_64|compiler": ":cc-compiler-xcode",
        "ios_i386|compiler": ":cc-compiler-xcode",
        "ios_armv6|compiler": ":cc-compiler-xcode",
        "ios_armv7|compiler": ":cc-compiler-xcode",
        "ios_armv7s|compiler": ":cc-compiler-xcode",
        "ios_arm64|compiler": ":cc-compiler-xcode",
        "watchos_i386|compiler": ":cc-compiler-xcode",
        "watchos_armv7k|compiler": ":cc-compiler-xcode",
        "tvos_x86_64|compiler": ":cc-compiler-xcode",
        "tvos_arm64|compiler": ":cc-compiler-xcode",
    },
)

apple_cc_toolchain(
    name = "cc-compiler-xcode",
    all_files = ":tool-wrappers",
    compiler_files = ":tool-wrappers",
    cpu = "local",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":tool-wrappers",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 0,
)
