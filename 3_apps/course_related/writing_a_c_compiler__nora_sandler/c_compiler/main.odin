package main

import "core:fmt"
import "core:os"
import "core:strings"

import "procs"
import "enums/eBuildOption"

main :: proc() {
	switch len(os.args) {
		case 2:
			fallthrough
		case 3:
			path_to_c_file := os.args[1]

			if !strings.ends_with(path_to_c_file, ".c") {
				fmt.println()
				fmt.eprintfln("c_compiler :: User Error :: \"%s\" is not a valid C filename")
				fmt.println()
				procs.print_help()
				return
			}

			if !os.exists(path_to_c_file) {
				fmt.println()
				fmt.eprintfln("c_compiler :: User Error :: The C file \"%s\" does not exist")
				fmt.println()
				procs.print_help()
				return
			}

			build_option_string := len(os.args) == 2 ? "" : os.args[2]

			build_option, succeeded := eBuildOption.from_string(build_option_string)

			if !succeeded {
				fmt.println()
				fmt.eprintfln("c_compiler :: User Error :: \"%s\" is not a valid c_compiler option", build_option_string)
				fmt.println()
				procs.print_help()
				return
			}

			procs.build(path_to_c_file, build_option)
		case:
			procs.print_help()
	}
}
