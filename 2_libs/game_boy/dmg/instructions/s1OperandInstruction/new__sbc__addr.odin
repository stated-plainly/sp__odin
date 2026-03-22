package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/sMemoryAddress"

new__sbc__addr :: proc(address: sMemoryAddress.Self) -> Self {
	return { type = .sbc, operand = address }
}
