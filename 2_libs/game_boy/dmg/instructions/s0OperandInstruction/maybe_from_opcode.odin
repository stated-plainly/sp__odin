package sp__lib__game_boy__dmg__instructions__s0OperandInstruction

import "../../opcodes/e1ByteOpcode"
import "../../opcodes/uOpcode"

maybe_from_opcode :: proc(opcode: uOpcode.Self) -> (maybe_self: Maybe(Self)) {
	#partial switch opcode_variant in opcode {
		case e1ByteOpcode.Self:
			#partial switch opcode_variant {
				case .nop:
					maybe_self = new__nop()
				case .rlca:
					maybe_self = new__rlca()
				case .rrca:
					maybe_self = new__rrca()
				case .stop:
					maybe_self = new__stop()
				case .rla:
					maybe_self = new__rla()
				case .rra:
					maybe_self = new__rra()
				case .daa:
					maybe_self = new__daa()
				case .cpl:
					maybe_self = new__cpl()
				case .scf:
					maybe_self = new__scf()
				case .ccf:
					maybe_self = new__ccf()
				case .halt:
					maybe_self = new__halt()
				case .ret:
					maybe_self = new__ret()
				case .prefix:
					maybe_self = new__prefix()
				case .reti:
					maybe_self = new__reti()
				case .di:
					maybe_self = new__di()
				case .ei:
					maybe_self = new__ei()
			}
	}

	return
}
