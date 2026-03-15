// note that the same package name is used across this file, 'first_name.odin', and 'last_name.odin', because they all belong to the same folder ('name_tag/')
package sp__reference_packages_nametag

// here, we create a new struct type called 'NameTag'
NameTag :: struct {
	first_name: FirstName, // notice that the 'FirstName' string alias from 'first_name.odin' can be used directly here, because 'name_tag.odin' belongs to the same package
	last_name: LastName, // notice that the 'LastName' string alias from 'last_name.odin' can be used directly here, because 'name_tag.odin' belongs to the same package
}
