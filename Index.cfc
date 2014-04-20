component {
remote function Save(arg) returnformat='json' {
	include "/Inc/newQuery.cfm"
	local.sql = "
	INSERT INTO Hello(HelloName,HelloDesc) VALUES('text','Hello, World!')
	"
	include "/Inc/execute.cfm"
	return local.result
}
}
