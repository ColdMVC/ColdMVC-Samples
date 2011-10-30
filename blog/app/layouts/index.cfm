<cfoutput>
<c:doctype />
<c:html>
	<c:head>
		<c:style name="reset.css" />
		<c:style name="blog.css" />
	</c:head>
	<c:body>
		<div id="navigation">
			<ul>
				<li><a href="#linkTo({action='create'})#">New Post</a></li>
				<li>Sign In</li>
			</ul>
		</div>
		<div id="header">
			<h1><a href="#linkTo({action='index'})#">Bears. Beets. Battlestar Galactica.</a></h1>
		</div>
		<div id="wrapper">
			<div id="content">
				<div id="container">
					<cfif structKeyExists(params, "message")>
						<div class="flash">
							#params.message#
						</div>
					</cfif>
					<c:render />
				</div>
			</div>
			<div id="sidebar">
				<div class="widget">
					<div class="about_me">
						<h4>About Me</h4>
						<span class="name">
							Tony Nelson
						</span>
						<span class="profile">
							 ColdFusion developer working at The Nerdery in Minneapolis, MN
						</span>
					</div>
				</div>
				<div class="widget">
					<div class="categories">
						<h4>Categories</h4>
						<ul>
							<c:each in="#categories#" value="category">
								<li><a href="#linkTo({action='category', id=category})#">#category.name()# (#arrayLen(category.posts())#)</a></li>
							</c:each>
						</ul>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer">
			&copy; #year(now())# Tony Nelson
		</div>
	</c:body>
</c:html>
</cfoutput>