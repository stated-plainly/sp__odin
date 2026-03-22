package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/eMemoryAddress"

new__rlc__addr :: proc(address: eMemoryAddress.Self) -> Self {
	return { type = .rlc, operand = address }
}
