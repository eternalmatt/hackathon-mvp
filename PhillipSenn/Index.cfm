<cfscript>
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<table id="Hello">
	<thead>
		<tr>
			<th>Name</th>
			<th>Desc</th>
			<th class="num">Date</th>
			<th class="num">Time</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<button id="Sample">Sample</button>
<cfinclude template="/Inc/foot.cfm">
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.6.0/moment.min.js"></script>
<script src="Index.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>