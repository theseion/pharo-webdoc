exporting
exportClass: cls
	self exportURL: (self urlForClass: cls).
	self flag: #todo. "not generating popups"
	"self exportURL: (self popupURLForClass: cls).
	
	self exportInstanceVariablesOf: cls.
	self exportInstanceVariablesOf: cls class.
	
	self exportMethods: cls methods.
	self exportMethods: cls class methods."