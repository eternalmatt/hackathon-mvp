;(function() {
	$('#Sample').on('click',SampleClicked)
	function SampleClicked() {
		var local = {}
		local.type = 'GET'
		local.url = '//MattSenn.com/Hackathon-MVP/Index.cfc'
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
		local.tr = ''
		for (var i=0; i<response.qry.DATA.length; i++) {
			local.HelloDateTime = response.qry.DATA[i][2]
			local.HelloDateTime = new Date(local.HelloDateTime)
			log(local.HelloDateTime)
			local.tr += '<tr>'
			local.tr += '<td>' + response.qry.DATA[i][0] + '</td>'
			local.tr += '<td>' + response.qry.DATA[i][1] + '</td>'
			local.tr += '<td class="num">' + moment(local.HelloDateTime).format('M/D/YYYY') + '</td>'
			local.tr += '<td class="num">' + moment(local.HelloDateTime).format('hh:mm:ss.SSA') + '</td>'
			local.tr += '</tr>'
		}
		$('#Hello tbody').html(local.tr)
	}
	function fail(xhr,status,response) {
		$('body').html(xhr.responseText)
		debugger
	}
})()