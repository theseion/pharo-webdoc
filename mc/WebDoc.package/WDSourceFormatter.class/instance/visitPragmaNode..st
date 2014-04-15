visitor-double dispatching
visitPragmaNode: aPragmaNode
	html span 
		class: 'stPragma';
		with: [
			html text:  $<.
			self formatMessage: aPragmaNode cascade: false.	
			html text:  $>; break]