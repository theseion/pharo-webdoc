visitor-double dispatching
acceptVariableNode: aVariableNode 
	"this method reallllyyyy annoys me. why don't we have different ast objects for all these variables???"
	|name |
	name := aVariableNode name.
	
	name = 'self' 
		ifTrue: [ ^ self formatSelf: aVariableNode ].
	name = 'super' 
		ifTrue: [ ^ self formatSuper: aVariableNode ].
	name = 'thisContext' 
		ifTrue: [ ^ self formatThisContext: aVariableNode ].
	
	(self argumentNames includes: name) 
		ifTrue: [ ^ self formatArgument: aVariableNode ].
	(self tempNames includes: name) 
		ifTrue: [ ^ self formatTempVariable: aVariableNode] .
	(self classVarNames includes: name)
		 ifTrue: [ ^ self formatClassVariable: aVariableNode ].
	(self instVarNames includes: name)
		 ifTrue: [ ^ self formatInstanceVariable: aVariableNode ].
	
	Smalltalk at: name asSymbol 
		ifPresent: [ :global| 
			^ global isBehavior 
				ifTrue: [ self formatClass: global ]
				ifFalse: [ self formatGlobal: global named: name ]].