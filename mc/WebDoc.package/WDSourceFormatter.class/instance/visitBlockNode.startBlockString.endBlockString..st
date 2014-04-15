visitor-double dispatching
visitBlockNode: aBlockNode startBlockString: startBlockString endBlockString: endBlockString 
	html text: startBlockString.
	html space.
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
		
	html space text: endBlockString.