visitor-double dispatching
acceptBlockNode: aBlockNode startBlockString: startBlockString endBlockString: endBlockString 
	| bodyBlock |
	html text: startBlockString.
	
	html span
		class: 'stBlockArgs';
		with: [
			aBlockNode arguments do: [:each | 
					html text: $:.
					self visitNode: each.
					html space ].
				
			aBlockNode hasArguments ifTrue: [ html text: '| ']].
	
	html span
		class: 'stBlockBody';
		with: [ self visitNode:  aBlockNode body ].
		
	html text: endBlockString.