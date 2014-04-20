component {
this.name="Hackathon-MVP"
this.datasource = "Hackathon"
this.SessionManagement = true
this.ScriptProtect = "all"
this.currentTemplatePath = GetCurrentTemplatePath()
this.directoryFromPath = GetDirectoryFromPath(this.currentTemplatePath)
this.TemplatePath = GetTemplatePath()
this.mappings['com'] = this.directoryFromPath & '\com\'
this.mappings['Inc'] = this.directoryFromPath & '\Inc\'

public boolean function onApplicationStart() {
	Application.fw = {}
	Application.fw.name='Teachers Pay Teachers'
	Application.fw.Path = '/Hackathon-MVP/'
	return true
}

public void function onSessionStart() {
	StructDelete(session,"Usr")
	session.fw = {}
	session.fw.msg = ''
}

public boolean function onRequestStart(String targetPage) {
	StructAppend(form,url,false)
	if (StructKeyExists(form,"onApplicationStart")) {
		onApplicationStart()
	}
	if (StructKeyExists(form,"onSessionStart")) {
		onSessionStart()
	}

	request.fw = {}
	request.fw.msgDiv = true
	request.fw.msg = session.fw.msg
	request.fw.msgClass = 'label-danger'
	request.fw.js = true
	request.fw.css= true
	request.fw.navbar = "navbar-fixed-top"
	request.fw.Container = true
	request.fw.hidden = false
	request.fw.tickCount = GetTickCount()
	request.fw.trackjs = true
	setting showDebugoutput = false;
	return true;
}
}
