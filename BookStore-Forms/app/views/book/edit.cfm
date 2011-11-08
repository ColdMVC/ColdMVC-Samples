<cfoutput>
<c:errors />
#bookForm.render()#
<a href="#linkTo({action='show', id=book})#">Cancel</a>
<a href="#linkTo({action='list'})#">Back to List</a>
</cfoutput>