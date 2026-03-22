package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/eMemoryAddress"

new__sla__addr :: proc(address: eMemoryAddress.Self) -> Self {
	return { type = .sla, operand = address }
}
