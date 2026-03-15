package procs

import "core:fmt"

import "../enums/eBuildOption"

build :: proc(path_to_c_file: string, build_option: eBuildOption.eBuildOption) {
	switch build_option {
		case .Default:
			fmt.println("default")
		case .Lex:
			fmt.println("lex")
		case .Parse:
			fmt.println("parse")
		case .Codegen:
			fmt.println("codegen")
	}
}
