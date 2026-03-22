package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../registers/e8BitRegister"

new__xor__r8 :: proc(register: e8BitRegister.Self) -> Self {
	return { type = .xor, operand = register }
}
