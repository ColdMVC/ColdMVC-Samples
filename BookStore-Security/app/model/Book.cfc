/**
 * @persistent true
 * @extends coldmvc.Model
 */
component {

	/**
	 * @fieldtype id
	 * @generator identity
	 */
	property id;
	property title;
	property author;
	property description;

	/**
	 * @type date
	 */
	property createdOn;

	/**
	 * @fieldtype many-to-one
	 * @fkcolumn createdBy
	 * @cfc app.model.User
	 */
	property createdBy;

	/**
	 * @type date
	 */
	property updatedOn;

	/**
	 * @fieldtype many-to-one
	 * @fkcolumn updatedBy
	 * @cfc app.model.User
	 */
	property updatedBy;

}
