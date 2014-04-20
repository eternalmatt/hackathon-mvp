<cfscript>
if (IsDefined('form.Save')) {
	new com.Hello().Save(form)
}
Hello = new com.Hello().Where()
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
<button id="Save" type="button">Publish</button>
<cfinclude template="/Inc/foot.cfm">
<script src="Index.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>