package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/sMemoryAddress"

new__sra__addr :: proc(address: sMemoryAddress.Self) -> Self {
	return { type = .sra, operand = address }
}
