/**
 * @accessors true
 */
component {

	property _Book;

	function add() {

		params.book = _Book.new();

	}

	function save() {

		var book = _Book.new(params.book);

		book.save();

		redirect({action="show", id=book});

	}

	function show() {

		params.book = _Book.get(params.id);

	}

	function list() {

		params.sorter = createSorter(["title", "author"]);

		params.books = _Book.list({
			sort = params.sorter.getSort(),
			order = params.sorter.getOrder()
		});

	}

	function edit() {

		params.book = _Book.get(params.id);

	}

	function update() {

		var book = _Book.get(params.book);

		book.save();

		redirect({action="show", id=book});

	}

	function delete() {

		var book = _Book.get(params.id);

		book.delete();

		redirect({action="list"});

	}

}