as yet unclassified
formatMessage: aMessageNode cascade: cascadeBoolean
	| selectorParts arguments |
	selectorParts := aMessageNode selectorParts. 
	arguments := aMessageNode arguments.
	
	arguments isEmpty ifTrue: [ 
		^ self renderSelector: selectorParts first inMessage: aMessageNode].
	
	1 to: arguments size do: [:i | 
		self formatMessage: aMessageNode part: i cascade: cascadeBoolean.].