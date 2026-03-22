package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../values/uN8"

new__xor__n8 :: proc(value: uN8.Self) -> Self {
	return { type = .xor, operand = value }
}
