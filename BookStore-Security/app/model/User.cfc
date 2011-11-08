/**
 * @extends coldmvc.Model
 * @persistent true
 */
component {

	/**
	 * @fieldtype id
	 * @generator identity
	 */
	property id;
	property firstName;
	property lastName;
	property username;
	property password;
	property salt;
	property role;

	public any function init() {

		variables.role = "guest";

		return this;

	}

	public string function getName() {

		return getFirstName() & " " & getLastName();

	}

	public any function setPassword(required string password) {

		setSalt($.string.random());

		variables.password = generatePassword(arguments.password, getSalt());

		return this;

	}


	public any function passwordMatches(required string password) {

		return generatePassword(arguments.password, getSalt()) == getPassword();

	}

	private string function generatePassword(required string password, required string salt) {

		return $.string.hash(arguments.password, arguments.salt);

	}

}