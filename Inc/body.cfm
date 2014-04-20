</head>
<body>
<cfoutput>
<nav class="#request.fw.navbar#">
	<div class="navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="##collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<cfif IsDefined('session.Usr')>
					<a class="navbar-brand" href="/TpT">Home</a>
				</cfif>
			</div>
		</div>
	</div>
	<cfif request.fw.msgDiv>
		<div id="msg" class="container<cfif request.fw.msg NEQ ''> #request.fw.msgClass#</cfif>">
			#request.fw.msg#
		</div>
	</cfif>
	<cfif IsDefined("request.showProgress") AND request.showProgress>
		<div class="row progress">
			<div class="progress-bar" style="width: 0%"></div>
		</div>
	</cfif>
</nav>
<cfif request.fw.hidden && request.fw.css && request.fw.js>
	<cfif request.fw.Container>
		<section id="main" class="container" hidden>
	<cfelse>
		<section id="main" class="noContainer" hidden>
	</cfif>
<cfelse>
	<cfif request.fw.Container>
		<section id="main" class="container">
	<cfelse>
		<section id="main" class="noContainer">
	</cfif>
</cfif>
</cfoutput>

