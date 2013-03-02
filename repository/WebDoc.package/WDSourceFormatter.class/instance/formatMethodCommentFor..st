rendering-formatting
formatMethodCommentFor: aNode

	renderComment ifFalse: [ ^ self ].
	aNode methodComments ifEmpty: [ ^ self].
	
	aNode source ifNil: [^self].
	
	html span 
		class: 'stMethodComment';
		with: [
			aNode methodComments do: [:comment | 
				html text: (aNode source copyFrom: comment first to: comment last).
				self break.]].