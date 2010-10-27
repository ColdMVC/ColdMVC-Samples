<cfoutput>
<c:doctype />
<c:html>
	<head>
		<title>Sample Secure Application</title>
		<c:style name="reset.css" />
		<c:style name="style.css" />
	</head>
	<body>
		<div id="tabs">
			<c:tabs />
		</div>
		<div id="content">
			<c:flash />
			<c:render />
		</div>
	</body>
</c:html>
</cfoutput>