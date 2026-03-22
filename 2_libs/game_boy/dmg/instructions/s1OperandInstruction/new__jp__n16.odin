package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../values/uN16"

new__jp__n16 :: proc(value: uN16.Self) -> Self {
	return { type = .jp, operand = value }
}
