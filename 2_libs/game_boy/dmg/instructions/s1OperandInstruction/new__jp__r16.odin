package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../registers/e16BitRegister"

new__jp__r16 :: proc(register: e16BitRegister.Self) -> Self {
	return { type = .jp, operand = register }
}
