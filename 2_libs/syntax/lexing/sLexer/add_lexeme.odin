package libs__syntax__lexing__sLexer

import "../sLexeme"

add_lexeme :: proc(self: ^Self, lexeme: sLexeme.Self($T)) {
	append(&self^.lexeme_list, lexeme)
}
