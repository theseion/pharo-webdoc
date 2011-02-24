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
				self visitArgument: each.
				html space ].
			html text: '| '].