<cfscript>
addRole("admin");
addRole("moderator");
addRole("member");
addRole("guest");

// all models are added as resources by default
// otherwise you could do the following
// addResource("book")

// admins can do everything
allow("admin");

// moderators can do everything but delete books that they didn't create
allow("moderator", "book");

// custom assertions allow you to run logic on a per-resource basis
// moderators can only delete books that they created
allow("moderator", "book", "delete", "app.model.assert.UserCreatedResource");

// members can only list and view books
// you can use specify arrays for roles, resources, permissions, or asserts
allow("member", "book", [ "list", "view" ]);

// guests can't do anything
// no need to add any rules since resources are denied by default
</cfscript>