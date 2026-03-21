package main

import "core:os"
import "core:fmt"
import "core:strings"

main :: proc() {
	switch len(os.args) {
	case 2:
		path_to_gb_file := os.args[1]

		if !strings.ends_with(path_to_gb_file, ".gb") {
			fmt.println()
			fmt.eprintfln("gb_rom_decompiler :: User Error :: \"%s\" is not a valid Game Boy filename")
			return
		}

		if !os.exists(path_to_gb_file) {
			fmt.println()
			fmt.eprintfln("gb_rom_decompiler :: User Error :: The Game Boy file \"%s\" does not exist")
			return
		}

		data, ok := os.read_entire_file(path_to_gb_file)

		if !ok {
			fmt.println()
			fmt.eprintfln("gb_rom_decompiler :: System Error :: Failed to read contents of \"%s\" Game Boy file")
			return
		}

		defer delete(data)
	case:
		fmt.println()
		fmt.eprintln("gb_rom_decompiler :: User Error :: No path to a valid \".gb\" Game Boy file was provided")
	}
}
