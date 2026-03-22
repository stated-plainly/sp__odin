package sp__lib__game_boy__dmg__instructions__uOperand1

import "../../conditions/eCondition"
import "../../memory/sMemoryAddress"
import "../../registers/e8BitRegister"
import "../../registers/e16BitRegister"
import "../../values/aS8"
import "../../values/uN8"
import "../../values/uN16"
import "../../vectors/eRestartVector"

Self :: union {
	e8BitRegister.Self,
	e16BitRegister.Self,
	sMemoryAddress.Self,
	eCondition.Self,
	eRestartVector.Self,
	aS8.Self,
	uN8.Self,
	uN16.Self,
}
