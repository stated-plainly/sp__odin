package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/sMemoryAddress"

new__cp__addr :: proc(address: sMemoryAddress.Self) -> Self {
	return { type = .cp, operand = address }
}
