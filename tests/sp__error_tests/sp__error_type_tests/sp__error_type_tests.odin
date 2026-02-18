package sp__error_type_tests

import "core:testing"

import "sp__error:sp__error_type"

// START - Display Name Tests
@(test)
display_name_InstantiationError :: proc(t: ^testing.T) {
	instantiation_error := sp__error_type.ErrorType.InstantiationError

	testing.expect(t, sp__error_type.display_name(instantiation_error)^ == "Instantiation", "ErrorType.InstantiationError's display_name != \"Instantiation\"")
}
// END - Display Name Tests
