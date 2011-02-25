as yet unclassified
formatMethodCommentFor: aNode
	| source |
	renderComment ifFalse: [^ self].
	aNode methodComments ifEmpty: [ ^ self].
	
	source := aNode source.
	source isNil ifTrue: [^self].
	
	html span 
		class: 'stMethodComment';
		with: [
			aNode methodComments do: [:comment | 
				html text: (aNode source copyFrom: comment first to: comment last).
				self break.]].