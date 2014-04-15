actions
server
	| port |
	port := (self optionAt: 'server') asUnsignedInteger.
	self inform: 'Staring Zinc Server on Port ', port asString.
	ZnZincServerAdaptor startOn: port.
	self flag: 'TODO: restrict to the packages'.
	WDRoot initialize.