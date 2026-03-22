package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../registers/e8BitRegister"

new__srl__r8 :: proc(register: e8BitRegister.Self) -> Self {
	return { type = .srl, operand = register }
}
