rendering
renderContentOn: html
	html render: packageTree.
	"html render: selectorList."
	html div 
		class: 'classMethodContainer';
		with: [
			self renderClassViewOn: html]