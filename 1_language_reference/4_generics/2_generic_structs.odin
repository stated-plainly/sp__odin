package _language_reference__generics

import "core:math/rand"

SpecialArray :: struct($T: typeid, $N: int) {
	items: [N]T,
	num_items_used: int,
}

find_random_thing_in_special_array :: proc(arr: SpecialArray($T, $N)) -> T {
	return arr.items[rand.int_max(arr.num_items_used)]
}

find_random_thing_in_special_array_example :: proc() {
	array: SpecialArray(f64, 128)

	// Fill `array` with 32 items of random data
	for i in 0..<32 {
		array.items[i] = rand.float64_range(-10, 10)
		array.num_items_used += 1
	}

	random_thing := find_random_thing_in_special_array(array)
}
