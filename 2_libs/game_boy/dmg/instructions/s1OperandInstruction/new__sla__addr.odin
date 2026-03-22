package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/sMemoryAddress"

new__sla__addr :: proc(address: sMemoryAddress.Self) -> Self {
	return { type = .sla, operand = address }
}
