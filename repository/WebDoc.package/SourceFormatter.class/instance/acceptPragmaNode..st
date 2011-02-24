visitor-double dispatching
acceptPragmaNode: aPragmaNode
	html span 
		class: 'stPragma';
		with: [
			html text:  $<.
			self formatMessage: aPragmaNode cascade: false.	
			html text:  $>]