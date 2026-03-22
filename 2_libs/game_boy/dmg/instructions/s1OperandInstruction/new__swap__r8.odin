package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../registers/e8BitRegister"

new__swap__r8 :: proc(register: e8BitRegister.Self) -> Self {
	return { type = .swap, operand = register }
}
