package _language_reference__generics

import "core:fmt"

Maybe :: union($T: typeid) { T }

maybe_example :: proc() {
	m: Maybe(f64)
	m = 4.32

	if m_val, m_val_ok := m.?; m_val_ok {
		fmt.println(m_val)
	}
}
