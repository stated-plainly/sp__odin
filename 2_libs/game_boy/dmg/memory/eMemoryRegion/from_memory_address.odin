package sp__lib__game_boy__dmg__eMemoryRegion

import "../../values/aA16"

from_memory_address :: proc(address: aA16.Self) -> (memory_region: Self) {
	switch address {
	case 0x0000..=0x7FFF:
		memory_region = .ROM
	case 0x800..=0x9FFF:
		memory_region = .VRAM
	case 0xA000..=0xBFFF:
		memory_region = .ERAM
	case 0xC000..=0xDFFF:
		memory_region = .WRAM
	case 0xE000..=0xFDFF:
		memory_region = .unused_1
	case 0xFE00..=0xFE9F:
		memory_region = .OAM
	case 0xFEA0..=0xFEFF:
		memory_region = .unused_2
	case 0xFF00..=0xFF7F:
		memory_region = .IO_Registers
	case 0xFF80..=0xFFFE:
		memory_region = .HRAM
	case 0xFFFF:
		memory_region = .IE
	case:
		panic("This should never fire. If it does, the from_memory_address range logic is wrong somewhere and needs to be reviewed")
	}

	return
}
