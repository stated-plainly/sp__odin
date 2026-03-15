package sp__reference_variables

// there are three ways to instantiate variables in Odin

// 1: annotate type and assign value
var_1: int = 55

// 2: annotate type and implicitly assign 'zero' value (this is different per type but logically intuitive e.g. 0 for numbers, false for bool, "" for string, nil for union, and so on)
var_2: string

// 3: derive type from assigned value
var_3 := "Hello, World!"

// option 3 should generally be preferred, particularly when assigning proc return values
