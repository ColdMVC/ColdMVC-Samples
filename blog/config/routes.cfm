<cfset add("/post/:id*", {
	params = {
		controller = "index",
		action = "show"
	},
	toParam = {
		id = "getLink"
	},
	filter = {
		class = "app.model.RoutingFilter",
		method = "filterPost"
	}
}) />

<cfset add("/category/:id", {
	params = {
		controller = "index",
		action = "category"
	},
	toParam = {
		id = "getLink"
	},
	filter = {
		class = "app.model.RoutingFilter",
		method = "filterCategory"
	}
}) />