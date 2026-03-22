package sp__lib__game_boy__dmg__instructions__s1OperandInstruction

import "../../opcodes/e1ByteOpcode"
import "../../opcodes/e2ByteOpcode"
import "../../opcodes/uOpcode"
import "../../operands/uOperand1"
import "../../registers/e16BitRegister"
import "../../values/aS8"
import "../../values/uN8"
import "../../values/uN16"

maybe_from_opcode :: proc(opcode: uOpcode.Self, maybe_operand: Maybe(uOperand1.Self)) -> (maybe_self: Maybe(Self)) {
	switch opcode_variant in opcode {
	case e1ByteOpcode.Self:
		#partial switch opcode_variant {
		case .inc__bc:
			maybe_self = new__inc__r16(.bc)
		case .inc__b:
			maybe_self = new__inc__r8(.b)
		case .dec__b:
			maybe_self = new__dec__r8(.b)
		case .dec__bc:
			maybe_self = new__dec__r16(.bc)
		case .inc__c:
			maybe_self = new__inc__r8(.c)
		case .dec__c:
			maybe_self = new__dec__r8(.c)
		case .inc__de:
			maybe_self = new__inc__r16(.de)
		case .inc__d:
			maybe_self = new__inc__r8(.d)
		case .dec__d:
			maybe_self = new__dec__r8(.d)
		case .jr__s8:
			operand := maybe_operand.? or_else panic("Syntax Error :: \"jr s8\" instruction used without an 's8' value")

			value: aS8.Self

			#partial switch operand_type in operand {
			case aS8.Self:
				value = operand_type
			case:
				panic("Syntax Error :: \"jr s8\" instruction used with an illegal 's8' value")
			}

			maybe_self = new__jr__s8(value)
		case .dec__de:
			maybe_self = new__dec__r16(.de)
		case .inc__e:
			maybe_self = new__inc__r8(.e)
		case .dec__e:
			maybe_self = new__dec__r8(.e)
		case .inc__hl:
			maybe_self = new__inc__r16(.hl)
		case .inc__h:
			maybe_self = new__inc__r8(.h)
		case .dec__h:
			maybe_self = new__dec__r8(.h)
		case .dec__hl:
			maybe_self = new__dec__r16(.hl)
		case .inc__l:
			maybe_self = new__inc__r8(.l)
		case .dec__l:
			maybe_self = new__dec__r8(.l)
		case .inc__sp:
			maybe_self = new__inc__r16(.sp)
		case .dec__sp:
			maybe_self = new__dec__r16(.sp)
		case .inc__a:
			maybe_self = new__inc__r8(.a)
		case .dec__a:
			maybe_self = new__dec__r8(.a)
		case .sub__b:
			maybe_self = new__sub__r8(.b)
		case .sub__c:
			maybe_self = new__sub__r8(.c)
		case .sub__d:
			maybe_self = new__sub__r8(.d)
		case .sub__e:
			maybe_self = new__sub__r8(.e)
		case .sub__h:
			maybe_self = new__sub__r8(.h)
		case .sub__l:
			maybe_self = new__sub__r8(.l)
		case .sub__val_at_hl:
			maybe_self = new__sub__addr(.hl)
		case .sub__a:
			maybe_self = new__sub__r8(.a)
		case .sbc__b:
			maybe_self = new__sbc__r8(.b)
		case .sbc__c:
			maybe_self = new__sbc__r8(.c)
		case .sbc__d:
			maybe_self = new__sbc__r8(.d)
		case .sbc__e:
			maybe_self = new__sbc__r8(.e)
		case .sbc__h:
			maybe_self = new__sbc__r8(.h)
		case .sbc__l:
			maybe_self = new__sbc__r8(.l)
		case .sbc__val_at_hl:
			maybe_self = new__sbc__addr(.hl)
		case .sbc__a:
			maybe_self = new__sbc__r8(.a)
		case .and__b:
			maybe_self = new__and__r8(.b)
		case .and__c:
			maybe_self = new__and__r8(.c)
		case .and__d:
			maybe_self = new__and__r8(.d)
		case .and__e:
			maybe_self = new__and__r8(.e)
		case .and__h:
			maybe_self = new__and__r8(.h)
		case .and__l:
			maybe_self = new__and__r8(.l)
		case .and__val_at_hl:
			maybe_self = new__and__addr(.hl)
		case .and__a:
			maybe_self = new__and__r8(.a)
		case .xor__b:
			maybe_self = new__xor__r8(.b)
		case .xor__c:
			maybe_self = new__xor__r8(.c)
		case .xor__d:
			maybe_self = new__xor__r8(.d)
		case .xor__e:
			maybe_self = new__xor__r8(.e)
		case .xor__h:
			maybe_self = new__xor__r8(.h)
		case .xor__l:
			maybe_self = new__xor__r8(.l)
		case .xor__val_at_hl:
			maybe_self = new__xor__addr(.hl)
		case .xor__a:
			maybe_self = new__xor__r8(.a)
		case .or__b:
			maybe_self = new__or__r8(.b)
		case .or__c:
			maybe_self = new__or__r8(.c)
		case .or__d:
			maybe_self = new__or__r8(.d)
		case .or__e:
			maybe_self = new__or__r8(.e)
		case .or__h:
			maybe_self = new__or__r8(.h)
		case .or__l:
			maybe_self = new__or__r8(.l)
		case .or__val_at_hl:
			maybe_self = new__or__addr(.hl)
		case .or__a:
			maybe_self = new__or__r8(.a)
		case .cp__b:
			maybe_self = new__cp__r8(.b)
		case .cp__c:
			maybe_self = new__cp__r8(.c)
		case .cp__d:
			maybe_self = new__cp__r8(.d)
		case .cp__e:
			maybe_self = new__cp__r8(.e)
		case .cp__h:
			maybe_self = new__cp__r8(.h)
		case .cp__l:
			maybe_self = new__cp__r8(.l)
		case .cp__val_at_hl:
			maybe_self = new__cp__addr(.hl)
		case .cp__a:
			maybe_self = new__cp__r8(.a)
		case .ret__nz:
			maybe_self = new__ret__cnd(.nz)
		case .pop__bc:
			maybe_self = new__pop__r16(.bc)
		case .jp__n16:
			operand := maybe_operand.? or_else panic("Syntax Error :: \"jp n16\" instruction used without an 'n16' value")

			value: uN16.Self

			#partial switch operand_type in operand {
			case uN16.Self:
				value = operand_type
			case:
				panic("Syntax Error :: \"jp n16\" instruction used with an illegal 'n16' value")
			}

			maybe_self = new__jp__n16(value)
		case .push__bc:
			maybe_self = new__push__r16(.bc)
		case .rst__00h:
			maybe_self = new__rst__rv(.hr0)
		case .ret__z:
			maybe_self = new__ret__cnd(.z)
		case .call__n16:
			operand := maybe_operand.? or_else panic("Syntax Error :: \"call n16\" instruction used without an 'n16' value")

			value: uN16.Self

			#partial switch operand_type in operand {
			case uN16.Self:
				value = operand_type
			case:
				panic("Syntax Error :: \"call n16\" instruction used with an illegal 'n16' value")
			}

			maybe_self = new__call__n16(value)
		case .rst__08h:
			maybe_self = new__rst__rv(.hr8)
		case .ret__nc:
			maybe_self = new__ret__cnd(.nc)
		case .pop__de:
			maybe_self = new__pop__r16(.de)
		case .push__de:
			maybe_self = new__push__r16(.de)
		case .sub__n8:
			operand := maybe_operand.? or_else panic("Syntax Error :: \"sub n8\" instruction used without an 'n8' value")

			value: uN8.Self

			#partial switch operand_type in operand {
			case uN8.Self:
				value = operand_type
			case:
				panic("Syntax Error :: \"sub n8\" instruction used with an illegal 'n8' value")
			}

			maybe_self = new__sub__n8(value)
		case .rst__10h:
			maybe_self = new__rst__rv(.hr10)
		case .ret__c:
			maybe_self = new__ret__cnd(.c)
		case .rst__18h:
			maybe_self = new__rst__rv(.hr18)
		case .pop__hl:
			maybe_self = new__pop__r16(.hl)
		case .push__hl:
			maybe_self = new__push__r16(.hl)
		case .and__n8:
			operand := maybe_operand.? or_else panic("Syntax Error :: \"and n8\" instruction used without an 'n8' value")

			value: uN8.Self

			#partial switch operand_type in operand {
			case uN8.Self:
				value = operand_type
			case:
				panic("Syntax Error :: \"and n8\" instruction used with an illegal 'n8' value")
			}

			maybe_self = new__and__n8(value)
		case .rst__20h:
			maybe_self = new__rst__rv(.hr20)
		case .jp__hl:
			maybe_self = new__jp__r16(.hl)
		case .xor__n8:
			operand := maybe_operand.? or_else panic("Syntax Error :: \"xor n8\" instruction used without an 'n8' value")

			value: uN8.Self

			#partial switch operand_type in operand {
			case uN8.Self:
				value = operand_type
			case:
				panic("Syntax Error :: \"xor n8\" instruction used with an illegal 'n8' value")
			}

			maybe_self = new__xor__n8(value)
		case .rst__28h:
			maybe_self = new__rst__rv(.hr28)
		case .pop__af:
			maybe_self = new__pop__r16(.af)
		case .push__af:
			maybe_self = new__push__r16(.af)
		case .or__n8:
			operand := maybe_operand.? or_else panic("Syntax Error :: \"or n8\" instruction used without an 'n8' value")

			value: uN8.Self

			#partial switch operand_type in operand {
			case uN8.Self:
				value = operand_type
			case:
				panic("Syntax Error :: \"or n8\" instruction used with an illegal 'n8' value")
			}

			maybe_self = new__or__n8(value)
		case .rst__30h:
			maybe_self = new__rst__rv(.hr30)
		case .cp__n8:
			operand := maybe_operand.? or_else panic("Syntax Error :: \"cp n8\" instruction used without an 'n8' value")

			value: uN8.Self

			#partial switch operand_type in operand {
			case uN8.Self:
				value = operand_type
			case:
				panic("Syntax Error :: \"cp n8\" instruction used with an illegal 'n8' value")
			}

			maybe_self = new__cp__n8(value)
		case .rst__38h:
			maybe_self = new__rst__rv(.hr38)
		}
	case e2ByteOpcode.Self:
		#partial switch opcode_variant {
		case .rlc__b:
			maybe_self = new__rlc__r8(.b)
		case .rlc__c:
			maybe_self = new__rlc__r8(.c)
		case .rlc__d:
			maybe_self = new__rlc__r8(.d)
		case .rlc__e:
			maybe_self = new__rlc__r8(.e)
		case .rlc__h:
			maybe_self = new__rlc__r8(.h)
		case .rlc__l:
			maybe_self = new__rlc__r8(.l)
		case .rlc__val_at_hl:
			maybe_self = new__rlc__addr(.hl)
		case .rlc__a:
			maybe_self = new__rlc__r8(.a)
		case .rrc__b:
			maybe_self = new__rrc__r8(.b)
		case .rrc__c:
			maybe_self = new__rrc__r8(.c)
		case .rrc__d:
			maybe_self = new__rrc__r8(.d)
		case .rrc__e:
			maybe_self = new__rrc__r8(.e)
		case .rrc__h:
			maybe_self = new__rrc__r8(.h)
		case .rrc__l:
			maybe_self = new__rrc__r8(.l)
		case .rrc__val_at_hl:
			maybe_self = new__rrc__addr(.hl)
		case .rrc__a:
			maybe_self = new__rrc__r8(.a)
		case .rl__b:
			maybe_self = new__rl__r8(.b)
		case .rl__c:
			maybe_self = new__rl__r8(.c)
		case .rl__d:
			maybe_self = new__rl__r8(.d)
		case .rl__e:
			maybe_self = new__rl__r8(.e)
		case .rl__h:
			maybe_self = new__rl__r8(.h)
		case .rl__l:
			maybe_self = new__rl__r8(.l)
		case .rl__val_at_hl:
			maybe_self = new__rl__addr(.hl)
		case .rl__a:
			maybe_self = new__rl__r8(.a)
		case .rr__b:
			maybe_self = new__rr__r8(.b)
		case .rr__c:
			maybe_self = new__rr__r8(.c)
		case .rr__d:
			maybe_self = new__rr__r8(.d)
		case .rr__e:
			maybe_self = new__rr__r8(.e)
		case .rr__h:
			maybe_self = new__rr__r8(.h)
		case .rr__l:
			maybe_self = new__rr__r8(.l)
		case .rr__val_at_hl:
			maybe_self = new__rr__addr(.hl)
		case .rr__a:
			maybe_self = new__rr__r8(.a)
		case .sla__b:
			maybe_self = new__sla__r8(.b)
		case .sla__c:
			maybe_self = new__sla__r8(.c)
		case .sla__d:
			maybe_self = new__sla__r8(.d)
		case .sla__e:
			maybe_self = new__sla__r8(.e)
		case .sla__h:
			maybe_self = new__sla__r8(.h)
		case .sla__l:
			maybe_self = new__sla__r8(.l)
		case .sla__val_at_hl:
			maybe_self = new__sla__addr(.hl)
		case .sla__a:
			maybe_self = new__sla__r8(.a)
		case .sra__b:
			maybe_self = new__sra__r8(.b)
		case .sra__c:
			maybe_self = new__sra__r8(.c)
		case .sra__d:
			maybe_self = new__sra__r8(.d)
		case .sra__e:
			maybe_self = new__sra__r8(.e)
		case .sra__h:
			maybe_self = new__sra__r8(.h)
		case .sra__l:
			maybe_self = new__sra__r8(.l)
		case .sra__val_at_hl:
			maybe_self = new__sra__addr(.hl)
		case .sra__a:
			maybe_self = new__sra__r8(.a)
		case .swap__b:
			maybe_self = new__swap__r8(.b)
		case .swap__c:
			maybe_self = new__swap__r8(.c)
		case .swap__d:
			maybe_self = new__swap__r8(.d)
		case .swap__e:
			maybe_self = new__swap__r8(.e)
		case .swap__h:
			maybe_self = new__swap__r8(.h)
		case .swap__l:
			maybe_self = new__swap__r8(.l)
		case .swap__val_at_hl:
			maybe_self = new__swap__addr(.hl)
		case .swap__a:
			maybe_self = new__swap__r8(.a)
		case .srl__b:
			maybe_self = new__srl__r8(.b)
		case .srl__c:
			maybe_self = new__srl__r8(.c)
		case .srl__d:
			maybe_self = new__srl__r8(.d)
		case .srl__e:
			maybe_self = new__srl__r8(.e)
		case .srl__h:
			maybe_self = new__srl__r8(.h)
		case .srl__l:
			maybe_self = new__srl__r8(.l)
		case .srl__val_at_hl:
			maybe_self = new__srl__addr(.hl)
		case .srl__a:
			maybe_self = new__srl__r8(.a)
		}
	}

	return
}
