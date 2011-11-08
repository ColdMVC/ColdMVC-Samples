/**
 * @accessors true
 * @extends coldmvc.forms.Form
 */
component {

	property book;

	public void function create() {

		addElement("input", "title")
			.setValue(book.title())
			.setRequired(true, "Please enter a title.");

		addElement("input", "author")
			.setValue(book.author())
			.setRequired(true, "Please enter an author.");

		addElement("textarea", "description")
			.setValue(book.description())
			.setRequired(true, "Please enter a description.");

		addElement("submit", "submit")
			.setLabel("Save Book");

	}

}