package _language_reference__generics

import "base:intrinsics"
import "core:math/rand"


// In odin the "$" symbol means "this thing is parapoly".

// Parapoly means, "this piece of code is written in a generic way, and each type-specific use of it will trigger the compiler to generate a type-specific implementation of it".


// For example, say you want to implement a "clamp" proc for all numeric types in odin.

// Without parapoly, you'd need to write something equivalent to this, for each numeric type in the language:
clamp_f32 :: proc(val: f32, min: f32, max: f32) -> f32 {
	if val <= min {
		return min
	}

	if val >= max {
		return max
	}

	return val
}

clamp_f64 :: proc(val: f64, min: f64, max: f64) -> f64 {
	if val <= min {
		return min
	}

	if val >= max {
		return max
	}

	return val
}

// And then to make the interface nicer, you'd overload them all into a single proc:
clamp_overloaded :: proc {
	clamp_f32,
	clamp_f64,
}

overloaded_example :: proc() {
	speed := clamp_overloaded(f32(10_000), 0, 1000)
}

// With parapoly, you just write it once, generically:
clamp_parapoly :: proc(val: $T, min: T, max: T) -> T where intrinsics.type_is_numeric(T) {
	if val <= min {
		return min
	}

	if val >= max {
		return max
	}

	return val
}

parapoly_example :: proc() {
	speed := clamp_parapoly(f32(10_000), 0, 1000)
}

// Same result, way less code


// Generic procs can be written without the "where intrinsics.type_is_numeric(T)" part. We used it here, because we want to enforce that our parapoly proc ONLY accepts numeric types

// The "${letter}" should only appear once per generic, and then all other values of the same type should use the letter by itself "{letter}", such as the $T and T in the above example.


// Though we didn't need to in the above example, it is also possible to use multiple generic types in the same generic e.g. val_1: $T, val_2: $U


// Another variant of generic syntax allows you to explicitly pass a type to the generic, rather than have it be inferred from a value. This is done using the "$T: typeid" syntax:
clamp_parapoly_with_explicit_type :: proc($T: typeid, val: T, min: T, max: T) -> T where intrinsics.type_is_numeric(T) {
	if val <= min {
		return min
	}

	if val >= max {
		return max
	}

	return val
}

parapoly_with_explicit_type_example :: proc() {
	speed := clamp_parapoly_with_explicit_type(f32, 10_000, 0, 1000)
}

// This is particularly useful in cases where you want to write boilerplate setup for complex types, generically:
make_random_sized_slice :: proc($T: typeid, allocator := context.allocator) -> []T {
	random_size := rand.int_max(1024)
	return make([]T, random_size, allocator)	
}

random_sized_slice_example :: proc() {
	random_sized_string_array := make_random_sized_slice(string)
	defer delete(random_sized_string_array) // note: "make()" and "delete()" are paired, as are "new()" and "free()"
											//       "make()" is used to allocate the memory in the make_random_sized_slice proc, so we need to pair it up with a "delete()" call here
											//       The "defer" keyword tells the compiler to hold off calling "delete()" until the current scope is exited
											//       Technically "delete(variable)" can be called anywhere after the associated variable is instantiated, but this "defer delete(variable)" pattern is common convention
}


// As well as the "$T: typeid" variant above, there is also a "T: typeid" variant of this type of generic

// The difference is that the former MUST be a compile-time constant

// Because the latter isn't a compile-time constant, it cannot be used as:
// - A type setter within a generic proc
// - The return type of a generic proc


// As with the "var: ${letter}" variant, we can use multiple "${letter}: compile-time-constant" values within a generic:
make_array_of_7 :: proc($N: int, $T: typeid) -> [N]T {
	res: [N]T

	for &v in res {
		v = 7
	}

	return res
}

make_array_of_7_example :: proc() {
	arr := make_array_of_7(128, f32)
}
