(function() {
	$('#Save').on('click',SaveClicked)
	function SaveClicked() {
		var local = {}
		local.type = 'POST'
		local.url = 'Index.cfc'
		local.dataType = 'json'
		local.data = {}
		local.data.method = 'Save'
		local.Promise = $.ajax(local)
		local.Promise.done(done)
		local.Promise.fail(fail)
	}
	function done(response,status,xhr) {
		var local = {}
	}
	function fail(xhr,status,response) {
		debugger
	}
})()