visitor-double dispatching
acceptMessageNode: aMessageNode 
	html span 
		class: 'stMessage';
		with: [
			aMessageNode needsParenthesis ifTrue: [ html text: $( ].
			
			html span
				class: 'stReceiver';
				with: [self visitNode: aMessageNode receiver].
			html space.
			self formatMessage: aMessageNode cascade: false.
			
			aMessageNode needsParenthesis ifTrue: [ html text: $) ].]