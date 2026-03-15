// # Packages
// The easiest way to think about packages is that they're folders

// Any .odin file that is a direct child of a folder belongs to that package, meaning that:
// - Its first line must be a `package {package name}` statement that is identical across this .odin file and its siblings
// - All of its data not marked with the @(private="file") attribute can be DIRECTLY used by all of its siblings
// - All of its data not marked with the @(private) attribute can be imported into other Odin packages via the `import {optional alias} "{path to package}"` statement

// If you look at the folder structure here, we have:
// - packages/
//     - packages.odin
//     - name_tag/
//         - first_name.odin
//         - last_name.odin
//         - name_tag.odin

// What this means is that we have two packages:
// - unnamed package at 'packages/' folder: [packages.odin]
// - unnamed package at 'name_tag/' folder: [first_name.odin, last_name.odin, name_tag.odin]

// Before we can use these packages, we need to give each a UNIQUE internal name for the Odin compiler to use, which we do using the `package {package_name}` statement, as follows:
package sp__reference_packages

// With this line, we've given the package at 'packages/' the name 'sp__reference_packages':
// unnamed package at 'packages/' folder: [packages.odin] -> sp__reference_packages: [packages.odin]

// This name can be anything you like, though it must be UNIQUE i.e. no other package in your codebase, or 3rd party imported package can have the same name

// It is important to understand that this name ONLY MATTERS to the Odin compiler. For all intents and purposes, your package can be thought of externally as '{folder name}', which is 'packages' in this case

// As a quick example of importing, the following line creates a public type alias called CustomString within this file, which belongs to the 'packages' package (known internally as 'sp__reference_packages')
CustomString :: string

// To use it in another package, we have to import it as follows (which defaults the name to the folder name):
import "../packages"

custom_string_1: packages.CustomString = "This is a custom string";

// Or using an alias:
import my_alias "../packages"

custom_string_2: my_alias.CustomString = "This is another custom string";

// Have a look in the 'name_tag/' folder to get an idea of how data is freely shared between sibling files within a package
