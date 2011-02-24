visitor-double dispatching
acceptArrayNode: anArrayNode
	html span 
		class: 'stArray';
		with: [
			html text: ${.
			anArrayNode statements isEmpty ifFalse: [
				anArrayNode statements size > 1
					ifTrue: [ self indent: [self formatStatementsFor: anArrayNode ]]
					ifFalse: [ self formatStatementsFor: anArrayNode ] ].
			html text: $}]