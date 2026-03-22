package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/eMemoryAddress"

new__xor__addr :: proc(address: eMemoryAddress.Self) -> Self {
	return { type = .xor, operand = address }
}
