package procs

import "core:fmt"
import os "core:os/os2"

import "../enums/eBuildOption"

build :: proc(path_to_c_file: string, build_option: eBuildOption.Self) {
	r, w, err := os.pipe()
	defer os.close(r)
	
	if err != nil {
		fmt.eprintln("c_compiler :: System Error :: Failed to allocate system resources")
		return
	}

	p: os.Process; {
		defer os.close(w)

		path_to_i_file := fmt.aprintf("%s.i", path_to_c_file[:len(path_to_c_file) - 2])
		defer delete(path_to_i_file)

		p, _ = os.process_start({
			command = {"gcc", "-E", "-P", path_to_c_file, "-o", path_to_i_file},
			stdout = w,
		})

		_, err = os.process_wait(p)

		if err != nil {
			fmt.eprintfln("c_compiler :: System Error :: Failed to preprocess \"%s\"", path_to_c_file)
			return
		}

		// TODO: Lexer
		os.remove(path_to_i_file)

		if build_option == .Lex {
			return
		}

		// TODO: Parser
		if build_option == .Parse {
			return
		}

		// TODO: Codegen
		if build_option == .Codegen {
			return
		}

		path_to_s_file := fmt.aprintf("%s.s", path_to_c_file[:len(path_to_c_file) - 2])
		defer delete(path_to_s_file)

		path_to_exe_file := fmt.aprintf("%s.exe", path_to_c_file[:len(path_to_c_file) - 2])
		defer delete(path_to_exe_file)

		p, _ = os.process_start({
			command = {"gcc", path_to_s_file, "-o", path_to_exe_file},
			stdout = w,
		})

		_, err = os.process_wait(p)

		if err != nil {
			fmt.eprintfln("c_compiler :: System Error :: Failed to compile \"%s\"", path_to_c_file)
			return
		}
	}
}
