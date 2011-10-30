/**
 * @accessors true
 */
component {

	property _Category;
	property _Post;

	public struct function filterPost(required struct params) {

		var post = _Post.findByLink(arguments.params.id);

		params.id = post.id();

		return params;

	}

	public struct function filterCategory() {

		var category = _Category.findByLink(arguments.params.id);

		params.id = category.id();

		return params;

	}

}