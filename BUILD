#Build "polymer_elements"
load('@polymerize//:polymerize.bzl', 'polymer_library')

package(default_visibility=['//visibility:public'])

#filegroup(name = "polymer_elements", srcs=glob(["lib/**/*.dart"]))

polymer_library(
  name = 'polymer_elements',
  deps = ['@js//:js','@html5//:html5','@polymer_element//:polymer_element'],
  dart_sources = glob(['lib/**/*.dart']),
  base_path = "//:lib",
  external = 1,
  html_templates = glob(['lib/**'],exclude=['lib/**/*.dart']),
  package_name = 'polymer_elements',
  version = '2.0.0-preview.1')
