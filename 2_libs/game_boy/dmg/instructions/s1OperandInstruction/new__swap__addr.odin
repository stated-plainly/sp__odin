package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/eMemoryAddress"

new__swap__addr :: proc(address: eMemoryAddress.Self) -> Self {
	return { type = .swap, operand = address }
}
