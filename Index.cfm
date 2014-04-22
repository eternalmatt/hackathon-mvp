<cfscript>
if (IsDefined('form.Save')) {
	new Hello().Save(form)
}
Hello = new Hello().Where()
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<table>
	<thead>
		<tr>
			<th>Name</th>
			<th>Desc</th>
			<th>Date</th>
			<th>Time</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="Hello.qry">
			<tr>
				<td>#HelloName#</td>
				<td>#HelloDesc#</td>
				<td>#DateFormat(HelloDateTime,'mm/dd')#</td>
				<td>#TimeFormat(HelloDateTime)#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<input id="HelloName" autofocus>
<br>
<textarea id="HelloDesc"></textarea>
<button id="Save" type="button">Publish</button>
<button id="Sample">Sample</button>
<cfinclude template="/Inc/foot.cfm">
<script src="Index.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>