component {
header name="Access-Control-Allow-Origin" value="*";

remote function Save(HelloName,HelloDesc) returnformat='jsonp' {
	include "/Inc/newQuery.cfm"
	local.sql = "
	INSERT INTO Hello(HelloName,HelloDesc) VALUES('Hello','World (hard coded)')
	"
//	local.svc.addParam(cfsqltype="CF_SQL_VARCHAR",value=arguments.HelloName);
//	local.svc.addParam(cfsqltype="CF_SQL_VARCHAR",value=arguments.HelloDesc);
	include "/Inc/execute.cfm"
	local.result.msg = "OK"
	return local.result
}

remote function Sample() returnformat='json' {
	local.result = {};
	local.result.msg = "";
	local.svc = new query();
	local.svc.setSQL("SELECT TOP 4 HelloName,HelloDesc
	,convert(varchar, HelloDateTime, 127) AS HelloDateTime
	FROM Hello");
	local.obj = local.svc.execute();
	local.result.qry = local.obj.getResult();
	local.result.Prefix = local.obj.getPrefix();
	return local.result
}
}
