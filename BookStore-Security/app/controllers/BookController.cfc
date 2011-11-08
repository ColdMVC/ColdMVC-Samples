/**
 * @accessors true
 */
component {

	property _Book;

	function add() {

		assertAllowed();
		// you could also use assertAllowed("book", "add");
		// if a resource isn't specified, assertAllowed will use @resource on the controller
		// if an @resource annotation isn't specified on the controller, it will use the controller key, which in this case is "Book"

		params.book = _Book.new();

	}

	/**
	 * @permission add
	 */
	function save() {

		assertAllowed();

		var book = _Book.new(params.book);

		book.save();

		redirect({action="show", id=book});

	}

	/**
	 * @permission view
	 */
	function show() {

		params.book = _Book.get(params.id);

		// in this case we want to make sure the user can view this specific book
		// by default a model will be converted to a resource based on its' entity name
		assertAllowed(params.book);

	}

	function list() {

		// explicit arguments
		assertAllowed("book", "list");

		params.books = _Book.list({
			sort = "title",
			order = "asc"
		});

	}

	function edit() {

		params.book = _Book.get(params.id);

		// explicit arguments
		assertAllowed(params.book, "edit");

	}

	/**
	 * @permission edit
	 */
	function update() {

		var book = _Book.get(params.book);

		assertAllowed(book);

		book.save();

		redirect({action="show", id=book});

	}

	function delete() {

		var book = _Book.get(params.id);

		assertAllowed(book);

		book.delete();

		redirect({action="list"});

	}

}