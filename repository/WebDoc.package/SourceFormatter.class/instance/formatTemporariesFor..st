as yet unclassified
formatTemporariesFor: aSequenceNode 
	| temps |
	temps := aSequenceNode temporaries.
	temps isEmpty ifTrue: [^self].
	html div
		class: 'stTemporaries';
		with: [
			html text: '| '.
			temps do: [:each | 
				self visitArgument: each.
				html space ].
			html text: $|].