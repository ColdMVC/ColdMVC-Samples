<cfoutput>
<div class="categories">
	<h4>Categories</h4>
	<ul>
		<c:each in="#categories#" value="category">
			<li><a href="#categoryURL(category)#">#category.name()# (#arrayLen(category.posts())#)</a></li>
		</c:each>
	</ul>
</div>
</cfoutput>