package sp__apps__scale_degrees

import "core:fmt"
import "core:math/rand"
import "core:os"
import "core:strings"
import "core:sys/windows"

import "../../libs/cli"
import "../../libs/graphics"
import "../../libs/music"

main :: proc() {
	when ODIN_OS == .Windows do windows.SetConsoleOutputCP(.UTF8)

	initial_scale_degree: Maybe(music.ScaleDegree)

	if len(os.args) == 2 {
		initial_scale_degree = music.ScaleDegree__from_keyboard_friendly_name(os.args[1])

		if initial_scale_degree == nil {
			fmt.println("Invalid scale degree arg provided")
			fmt.println()
			print_help()
			return
		}
	} else if len(os.args) > 2 {
		fmt.println("Too many args provided")
		fmt.println()
		print_help()
		return
	}

	for {
		scale_degree := initial_scale_degree.? or_else music.ScaleDegree__random()

		root_note := music.Note__random_diatonic_root()
		relative_note := music.Note__from_root(root_note, scale_degree)

		reference_point := ReferencePoint__random()
		
		switch reference_point {
			case .OfRoot:
				of_root(scale_degree, root_note, relative_note)
				
			case .RootOf:
				root_of(scale_degree, root_note, relative_note)
		}
	}
}

ReferencePoint :: enum {
	OfRoot,
	RootOf,
}

ReferencePoint__random :: proc() -> ReferencePoint {
	output: ReferencePoint

	random_int := rand.int_range(0, 2)

	switch random_int {
		case 0:
			output = .OfRoot
		case 1:
			output = .RootOf
	}

	return output
}

of_root :: proc(scale_degree: music.ScaleDegree, root_note: music.Note, relative_note: music.Note) {
	buf: [100]byte

	txt_correct := cli.bold(cli.colour("Correct", graphics.Colour__good()), deallocate_value = true)
	defer delete(txt_correct)

	txt_incorrect := cli.bold(cli.colour("Incorrect", graphics.Colour__bad()), deallocate_value = true)
	defer delete(txt_incorrect)

	txt_scale_degree := cli.bold(cli.colour(music.ScaleDegree__display_name(scale_degree), graphics.Colour__verb()), deallocate_value = true)
	defer delete(txt_scale_degree)

	txt_root_note := cli.bold(cli.colour(music.Note__display_name(root_note), graphics.Colour__noun(), deallocate_value = true), deallocate_value = true)
	defer delete(txt_root_note)

	txt_relative_note := cli.bold(cli.colour(music.Note__display_name(relative_note), graphics.Colour__focal_point(), deallocate_value = true), deallocate_value = true)
	defer delete(txt_relative_note)

	fmt.printfln("What is the %s of %s?", txt_scale_degree, txt_root_note)
	bytes_read, _ := os.read(os.stdin, buf[:])
	answer := strings.trim_space(string(buf[:(bytes_read - 1)]))

	if strings.compare(answer, music.Note__keyboard_friendly_name(relative_note)) == 0 {
		fmt.printfln("%s! %s is the %s of %s", txt_correct, txt_relative_note, txt_scale_degree, txt_root_note)
	} else {
		fmt.printfln("%s! %s is the %s of %s", txt_incorrect, txt_relative_note, txt_scale_degree, txt_root_note)
	}
}

root_of :: proc(scale_degree: music.ScaleDegree, root_note: music.Note, relative_note: music.Note) {
	buf: [100]byte

	txt_correct := cli.bold(cli.colour("Correct", graphics.Colour__good()), deallocate_value = true)
	defer delete(txt_correct)

	txt_incorrect := cli.bold(cli.colour("Incorrect", graphics.Colour__bad()), deallocate_value = true)
	defer delete(txt_incorrect)

	txt_scale_degree := cli.bold(cli.colour(music.ScaleDegree__display_name(scale_degree), graphics.Colour__verb()), deallocate_value = true)
	defer delete(txt_scale_degree)

	txt_root_note := cli.bold(cli.colour(music.Note__display_name(root_note), graphics.Colour__focal_point(), deallocate_value = true), deallocate_value = true)
	defer delete(txt_root_note)

	txt_relative_note := cli.bold(cli.colour(music.Note__display_name(relative_note), graphics.Colour__noun(), deallocate_value = true), deallocate_value = true)
	defer delete(txt_relative_note)

	fmt.printfln("What is %s the %s of?", txt_relative_note, txt_scale_degree)
	bytes_read, _ := os.read(os.stdin, buf[:])
	answer := strings.trim_space(string(buf[:(bytes_read - 1)]))

	if strings.compare(answer, music.Note__keyboard_friendly_name(root_note)) == 0 {
		fmt.printfln("%s! %s is the %s of %s", txt_correct, txt_relative_note, txt_scale_degree, txt_root_note)
	} else {
		fmt.printfln("%s! %s is the %s of %s", txt_incorrect, txt_relative_note, txt_scale_degree, txt_root_note)
	}
}

print_help :: proc() {
	fmt.println("---")
	fmt.println("Scale Degrees")
	fmt.println("---")
	fmt.println("Practice musical scale degrees")
	fmt.println()
	fmt.println("answer format:")
	fmt.println("- lowercase letter followed by optional 's's (sharp) or 'b's (flat) e.g. fbb means 'F flat flat'")
	fmt.println()
	fmt.println("args:")
	fmt.println("- (blank) -> Randomised scale degrees")
	fmt.println("- 1|2b|2|3b|3|4|4s|5b|5|5s|6b|6|7b|7|8|9b|9|9s|11|11s|13b|13 -> Specific scale degrees")
}
