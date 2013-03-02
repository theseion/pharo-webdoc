rendering
break
	self useBreaks 
		ifTrue: [ html break]
		ifFalse: [ html space]