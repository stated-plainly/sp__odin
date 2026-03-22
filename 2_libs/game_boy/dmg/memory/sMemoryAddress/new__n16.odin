package sp__lib__game_boy__dmg__memory__sMemoryAddress

import "../../values/uN16"

new__n16 :: proc(value: uN16.Self) -> Self {
	return { type = .n16, value = value }
}
