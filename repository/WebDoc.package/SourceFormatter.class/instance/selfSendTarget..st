visitor
selfSendTarget: selector
	^ (method methodClass lookupSelector: selector) methodClass