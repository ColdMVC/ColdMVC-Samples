/**
 * @accessors true
 * @extends coldmvc.LayoutController
 */
component {

	property _Category;

	function index() {

		params.categories = _Category.list({
			sort = "name"
		});

	}

}