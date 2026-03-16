package libs__syntax__lexing__sToken

import "core:reflect"

Self :: struct($T: typeid) where reflect.type_kind(T) == reflect.Type_Kind.Enum {
	type: T,
	value: string,
}
