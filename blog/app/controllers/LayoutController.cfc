/**
 * @accessors true
 */
component {

	property _Category;

	function index() {

		var query = _Category.createQuery();
		query.select("distinct category");
		query.innerJoin("posts", "post");

		params.categories = query.list();

	}

}