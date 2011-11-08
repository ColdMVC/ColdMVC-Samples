/**
 * @accessors true
 */
component {

	property _User;

	function pre() {

		// seed the database with some test users
		if (_User.count() == 0) {

			_User.new({
				firstName = "Joe",
				lastName = "Admin",
				username = "admin",
				password = "admin",
				role = "admin"
			}).save(false);

			_User.new({
				firstName = "Joe",
				lastName = "Moderator",
				username = "moderator",
				password = "moderator",
				role = "moderator"
			}).save(false);

			_User.new({
				firstName = "Joe",
				lastName = "Member",
				username = "member",
				password = "member",
				role = "member"
			}).save();

		}

	}

	function index() {

		params.users = _User.list();

	}

}