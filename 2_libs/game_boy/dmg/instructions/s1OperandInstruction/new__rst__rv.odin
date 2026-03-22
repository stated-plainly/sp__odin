package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../vectors/eRestartVector"

new__rst__rv :: proc(restart_vector: eRestartVector.Self) -> Self {
	return { type = .rst, operand = restart_vector }
}
