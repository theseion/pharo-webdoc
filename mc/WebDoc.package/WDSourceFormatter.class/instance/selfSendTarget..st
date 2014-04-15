private
selfSendTarget: selector
	(method methodClass lookupSelector: selector) 
		ifNotNilDo: [ :m| ^ m methodClass].
	^ nil