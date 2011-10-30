/**
 * @accessors true
 */
component {

	property _Category;
	property _Comment;
	property _Post;

	function index() {

		var query = _Post.createQuery({
			sort = "date",
			order = "desc"
		});

		params.paginator = createPaginator(query, {
			max = 5
		});

	}

	function create() {

		params.post = _Post.new();

	}

	function edit() {

		params.post = _Post.get(params.id);

	}

	function show() {

		params.post = _Post.findByLink(params.id);

	}

	function save() {

		params.post.categories = parseCategories(params.post.categories);

		var post = _Post.new(params.post);

		post.save();

		redirect({action="show", id=post});

	}

	function update() {

		params.post.categories = parseCategories(params.post.categories);

		var post = _Post.get(params.post.id, params.post);

		post.save();

		redirect({action="show", id=post});

	}

	function addComment() {

		var comment = _Comment.new(params.comment);

		comment.save();

		var post = _Post.get(params.comment.post);

		flash.message = "Comment added successfully";

		redirect({action="show", id=post});

	}

	function category() {

		params.category = _Category.findByLink(params.id);

		var query = _Post.createQuery({
			sort = "date",
			order = "desc"
		});

		query.innerJoin("categories", "category");
		query.where(
			query.eq("category.link", params.id)
		);

		params.paginator = createPaginator(query, {
			max = 5
		});

	}

	private array function parseCategories(required string categories) {

		arguments.categories = $.string.toArray(arguments.categories);

		var result = [];
		var i = "";

		for (i = 1; i <= arrayLen(categories); i++) {

			var name = categories[i];
			var category = _Category.findByName(name);

			if (!category.exists()) {
				category.name(name);
				category.save();
			}

			arrayAppend(result, category);

		}

		return result;

	}

}