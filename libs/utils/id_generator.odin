package sp__utils

IDGenerator :: struct {
	id: uint,
}

IDGenerator__new :: proc() -> IDGenerator {
	return IDGenerator { id = 0 }
}

IDGenerator__generate_id :: proc(id_generator: ^IDGenerator) -> uint {
	id_generator^.id += 1

	return id_generator^.id
}
