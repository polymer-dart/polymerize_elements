#  Polymer elements for polymerize

This package contains the wrappers for (some) `polymer-elements` official components to be used in project based
on [polymerize](https://pub.dartlang.org/packages/polymerize) tool and relate [bazel](http://bazel.io) [rules for polymerize Dart](https://github.com/dam0vm3nt/bazel_polymerize_rules). 

To use this package in your bazel polymerize project add the following lines to your `WORKSPACE` file : 

    git_repository(
     name = "polymer_elements",
     remote = "https://github.com/dam0vm3nt/polymerize_elements.git",
     tag = "v0.1.0",
    )



And then in the `BUILD` file of any modules using it declare a dependency with `@polymer_elements//:polymer_elements` , for example : 

    polymer_library(
     name='my_module',
     deps=[
      '@polymer_element//:polymer_element',
      '@polymer_elements//:polymer_elements',
      '@js//:js' ],
     package_name = 'my_module',
     version = '1.0',
     base_path = '//:lib',
     dart_sources= glob(['lib/**/*.dart']),
     html_templates= glob(['lib/**','web/**'],exclude=['**/*.dart']))
