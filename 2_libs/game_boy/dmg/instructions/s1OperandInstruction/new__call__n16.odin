package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../values/uN16"

new__call__n16 :: proc(value: uN16.Self) -> Self {
	return { type = .call, operand = value }
}
