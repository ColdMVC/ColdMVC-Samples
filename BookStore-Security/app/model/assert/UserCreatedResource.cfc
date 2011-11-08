component {

	public boolean function assert(required any acl, required any role, required any resource, required any permission) {

		if (isSimpleValue(arguments.resource)) {
			return false;
		}

		// check to see if the role matches the creator of the resource
		if (arguments.role.getID() == arguments.resource.getCreatedBy().getID()) {
			return true;
		}

		return false;

	}

}