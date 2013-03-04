rendering
selectorsForCategory: aCategoryName
	| implementedSelectors |
	implementedSelectors := SystemNavigation default allImplementedMessages.
	
	aCategoryName = self binaryCategory
		ifTrue: [ ^ implementedSelectors select: [ :symbol | symbol isBinary ]].
	
	^ implementedSelectors
			select: [ :symbol | 
				(symbol findString: aCategoryName startingAt: 1 caseSensitive: false) = 1 ]