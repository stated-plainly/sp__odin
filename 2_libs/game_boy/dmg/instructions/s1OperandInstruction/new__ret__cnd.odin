package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../conditions/eCondition"

new__ret__cnd :: proc(condition: eCondition.Self) -> Self {
	return { type = .ret, operand = condition }
}
