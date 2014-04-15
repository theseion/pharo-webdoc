rendering
selectorsForCategory: aCategoryName
	| implementedSelectors |
	implementedSelectors := self environment selectors.
	
	aCategoryName = self binaryCategory
		ifTrue: [ ^ implementedSelectors select: [ :symbol | symbol isBinary ]].
	
	^ implementedSelectors
			select: [ :symbol | 
				(symbol findString: aCategoryName startingAt: 1 caseSensitive: false) = 1 ]