/**
 * @accessors true
 */
component {

	property _User;

	/**
	 * @params username, password
	 */
	function login() {

		params.message = "";

		if (isPost()) {

			// find the user based
			var user = _User.findByUsername(params.username);

			// verify the user exists
			if (user.exists() && user.passwordMatches(params.password)) {

				setUserID(user.getID());

				redirect({controller="index"});

			}

			params.message = "Invalid username or password";

		}

	}

	function logout() {

		clearUserID();

		redirect({controller="index"});

	}

}