rendering-formatting
formatTemporariesFor: aSequenceNode 
	| temps |
	temps := aSequenceNode temporaries.
	temps isEmpty ifTrue: [^self].
	
	html span
		class: 'stTemporaries';
		with: [
			html text: '| '.
			temps do: [:each | 
				self visitArgumentNode: each.
				html space ].
			html text: '| '].
	aSequenceNode parent isMethod ifTrue: [ self break ].