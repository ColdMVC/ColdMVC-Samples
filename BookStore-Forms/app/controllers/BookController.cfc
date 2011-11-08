/**
 * @accessors true
 */
component {

	property _Book;

	function add() {

		var book = _Book.new();

		var bookForm = createForm("book", {
			book = book
		});

		if (isPost()) {

			var result = bookForm.validate(params);

			if (result.isValid()) {

				book.populate(bookForm.getValues());

				book.save();

				redirect({action="show", id=book});

			} else {

				params.errors = result.getErrors();

			}

		}

		params.bookForm = bookForm;

	}

	function show() {

		params.book = _Book.get(params.id);

	}

	function list() {

		params.books = _Book.list({
			sort = "title",
			order = "asc"
		});

	}

	function edit() {

		var book = _Book.get(params.id);

		var bookForm = createForm("book", {
			book = book
		});

		if (isPost()) {

			var result = bookForm.validate(params);

			if (result.isValid()) {

				book.populate(bookForm.getValues());

				book.save();

				redirect({action="show", id=book});

			} else {

				params.errors = result.getErrors();

			}

		}

		params.book = book;
		params.bookForm = bookForm;

	}

	function delete() {

		var book = _Book.get(params.id);

		book.delete();

		redirect({action="list"});

	}

}