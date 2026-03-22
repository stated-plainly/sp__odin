package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../memory/sMemoryAddress"

new__rl__addr :: proc(address: sMemoryAddress.Self) -> Self {
	return { type = .rl, operand = address }
}
