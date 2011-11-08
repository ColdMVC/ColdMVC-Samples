<cfoutput>
<c:form>
	<div class="message">
		#escape(message)#
	</div>
	<c:input name="username" />
	<c:password name="password" />
	<c:submit />
</c:form>
</cfoutput>