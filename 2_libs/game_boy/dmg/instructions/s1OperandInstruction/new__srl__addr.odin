package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/sMemoryAddress"

new__srl__addr :: proc(address: sMemoryAddress.Self) -> Self {
	return { type = .srl, operand = address }
}
