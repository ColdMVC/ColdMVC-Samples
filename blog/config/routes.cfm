<cfset add("/post/:id*", {
	params = {
		controller = "index",
		action = "show"
	},
	toParam = {
		id = "getLink"
	}
}) />

<cfset add("/category/:id", {
	params = {
		controller = "index",
		action = "category"
	},
	toParam = {
		id = "getLink"
	}
}) />