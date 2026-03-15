package _language_reference__methods

import "sColour"

// Strictly speaking, odin doesn't support methods, however I've landed on a pretty readable workaround that effectively turns the package itself into the type, making its procs read like "methods"


// Basically, you do the following:
// 1. Call the package what you would call the type:
//    - sMyStruct
//    - eMyEnum
//    - and so on...
//      Note: You can call the type whatever you want, the lowercase type prefix was something that I adopted in Rust to avoid naming conflicts and I've gotten used to it at this point, so that's the convention I use
// 2. Make a file within the package called self.odin and use this to setup the core data type that the package represents, and call that type "Self"
// 3. For each "method", create an equivalently named file within the package e.g. the "new" method would be written in the new.odin file


// There's a sColour type nested inside this package that demonstrates the basic idea


// And here it is in action:
sColour_example :: proc() {
	red := sColour.new(255, 0, 0, 0)
	sColour.set_opacity(&red, 10)
}


// The reason for the "Self" type naming convention is that it keeps the type readable when used as a type annotation outside of the package:
use_sColour :: proc(colour: sColour.Self) {
	// do something with sColour
}

// if the type itself was called "sColour" instead of "Self" then outside of the package, it would be called "sColour.sColour", which is less readable than the "Self" approach
