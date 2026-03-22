package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../values/aS8"

new__jr__s8 :: proc(value: aS8.Self) -> Self {
	return { type = .jr, operand = value }
}
