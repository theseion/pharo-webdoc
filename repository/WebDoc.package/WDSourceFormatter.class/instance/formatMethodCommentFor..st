rendering-formatting
formatMethodCommentFor: aNode

	renderComment ifFalse: [ ^ self ].
	aNode methodComments ifEmpty: [ ^ self].
	
	aNode source ifNil: [^self].
	
	html span 
		class: 'stMethodComment';
		with: [
			aNode methodComments do: [:comment | 
				((aNode source copyFrom: comment first to: comment last)
					splitOn: Character cr)
						do: [:commentLine| html text: commentLine ]
						separatedBy: [ html break ]]].