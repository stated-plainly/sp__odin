package libs__syntax__lexing__sLexeme

import "core:reflect"
import "core:text/regex"

Self :: struct($T: typeid) where reflect.type_kind(T) == reflect.Type_Kind.Enum {
	type: T,
	regex: string,
}
