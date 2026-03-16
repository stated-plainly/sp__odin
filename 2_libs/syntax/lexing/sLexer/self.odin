package libs__syntax__lexing__sLexer

import "../sLexeme"

Self :: struct($T: typeid) {
	lexeme_list: [dynamic]sLexeme.Self(T),
}
