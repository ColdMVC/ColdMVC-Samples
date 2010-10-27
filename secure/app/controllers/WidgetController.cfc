/**
 * @extends coldmvc.Controller
 * @action list
 */
component {

	function edit() {

		params.widget = _Widget.get(params.id);
		params.widget.prototype.add("setName", sayHello);
		params.widget.prototype.delegate("sayGoodbye", this, "sayGoodbye");

	}

	function save() {

		var widget = _Widget.get(params.widget.id, params.widget);
		widget.save();

		redirect({action="edit", id=widget});

	}

}