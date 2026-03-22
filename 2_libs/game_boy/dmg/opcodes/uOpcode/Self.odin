package sp__lib__game_boy__dmg__opcodes__uOpcode

import "../e1ByteOpcode"
import "../e2ByteOpcode"

Self :: union {
	e1ByteOpcode.Self,
	e2ByteOpcode.Self,
}
