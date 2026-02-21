package sp__numbers

import "base:intrinsics"

value_in_range :: proc(value, min, max: $T) -> bool where intrinsics.type_is_numeric(T) {
	return value >= min && value <= max
}
