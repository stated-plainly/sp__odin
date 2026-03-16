package libs__syntax__lexing__sLexer

die :: proc(self: ^Self) {
	delete(self.lexeme_list)
}
