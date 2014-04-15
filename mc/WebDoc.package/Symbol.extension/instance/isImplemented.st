*WebDoc
isImplemented
	SystemNavigation default allBehaviorsDo: [:class | 
		(class includesSelector: self)
			ifTrue: [ ^ true ]].
	^ false