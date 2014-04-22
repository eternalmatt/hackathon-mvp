(function() {
	$('#Save').on('click',SaveClicked)
	function SaveClicked() {
		var local = {}
		local.type = 'POST'
		local.url = 'Index.cfc'
		local.dataType = 'json'
		local.data = {}
		local.data.method = 'Save'
		local.data.HelloName = $('#HelloName').val()
		local.data.HelloDesc = $('#HelloDesc').val()
		local.crossDomain = true
		local.Promise = $.ajax(local)
		local.Promise.done(done)
		local.Promise.fail(fail)
	}
	function done(response,status,xhr) {
		var local = {}
		log(response)
		debugger;
	}
	function fail(xhr,status,response) {
		log(xhr.responseText)
		debugger
	}
})()


;(function() {
	$('#Sample').on('click',SampleClicked)
	function SampleClicked() {
		var local = {}
		local.type = 'GET'
		local.url = 'Index.cfc'
		local.dataType = 'json'
		local.data = {}
		local.data.method = 'Sample'
		local.crossDomain = true
		local.Promise = $.ajax(local)
		local.Promise.done(done)
		local.Promise.fail(fail)
	}
	function done(response,status,xhr) {
		var local = {}
		log(response)
	}
	function fail(xhr,status,response) {
		$('body').html(xhr.responseText)
		debugger
	}
})()