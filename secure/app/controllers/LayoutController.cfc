/**
 * @accessors true
 * @extends coldmvc.LayoutController
 */
component {

	property _User;

	function index() {

		params.currentUser = _User.get($.user.id());

	}

}