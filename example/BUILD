cc_library(
    name = "example-cc-deps",
    hdrs = [
        "example-cc-deps.h",
    ],
    srcs = [
        "example-cc-deps.cc",
    ],
)

apple_binary(
    name = "example",
    srcs = [
        "example-main.mm",
    ],
    deps = [
        ":example-cc-deps",
    ],
)
