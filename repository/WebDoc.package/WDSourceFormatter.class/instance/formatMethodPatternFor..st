rendering-formatting
formatMethodPatternFor: aMethodNode 
	| selectorParts arguments |
	selectorParts := aMethodNode selectorParts.
	arguments := aMethodNode arguments.
	
	arguments isEmpty 
		ifTrue: [ ^ self renderSelector: selectorParts first value].
		
	selectorParts with: arguments do: [:selector :arg | 
			self renderSelector: selector.
			html space.
			self visitArgument: arg.
			html space.]