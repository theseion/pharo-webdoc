rendering-formatting
formatMessage: aMessageNode part: i cascade: cascadeBoolean
	|selector sendBlock |
	selector := aMessageNode selectorParts at: i.
	sendBlock := [
		self renderSelector: selector inMessage: aMessageNode.
		html space.
		html span
			class: 'stSendArgument';
			with: [ self visitNode: (aMessageNode arguments at: i) ].
		
		i == aMessageNode arguments size 
			ifFalse: [html space]
			ifTrue: [self dot: aMessageNode]].
	
	
	(self selectorForcesLineBreak: selector value)
		ifFalse: sendBlock
		ifTrue: [ 
			self indent: sendBlock]