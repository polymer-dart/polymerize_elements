#Build "polymer_elements"
load("@polymerize//:polymerize.bzl", "polymer_library")

package(default_visibility = ["//visibility:public"])

#filegroup(name = "polymer_elements", srcs=glob(["lib/**/*.dart"]))

polymer_library(
    name = "polymer_elements",
    package_name = "polymer_elements",  #Cippa Lippa
    base_path = "//:lib",
    dart_sources = glob(["lib/**/*.dart"]),
    html_templates = glob(
        ["lib/**"],
        exclude = ["lib/**/*.dart"],
    ),
    version = "2.0-preview",
    deps = [
        "@js//:js",
        "@polymer_element//:polymer_element",
    ],
)
