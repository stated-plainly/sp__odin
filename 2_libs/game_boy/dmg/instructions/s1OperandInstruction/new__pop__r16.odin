package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../registers/e16BitRegister"

new__pop__r16 :: proc(register: e16BitRegister.Self) -> Self {
	return { type = .pop, operand = register }
}
