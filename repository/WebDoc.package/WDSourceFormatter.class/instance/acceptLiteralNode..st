visitor-double dispatching
acceptLiteralNode: aLiteralNode 
	|value|
	value := aLiteralNode value.
	"should use visitor here"
	value isSymbol 
		ifTrue: [ ^ self formatSymbol: value ].
	value isCharacter 
		ifTrue: [ ^ self formatCharacter: value ].
	value isString 
		ifTrue: [ ^ self formatString: value ].
	value isNumber 
		ifTrue: [ ^ self formatNumber: value ].
	
	value == true 
		ifTrue: [ ^ self formatTrue: aLiteralNode].
	value == false 
		ifTrue: [ ^ self formatFalse: aLiteralNode].
	value == nil 
		ifTrue: [ ^ self formatNil: aLiteralNode].
	
	self halt.