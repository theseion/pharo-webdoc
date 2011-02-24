as yet unclassified
renderContentOn: html
	html render: packageTree.
	html div 
		class: 'classMethodContainer';
		with: [
			self renderClassViewOn: html.
			self renderMethodViewOn: html]