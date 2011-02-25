rendering
renderContentOn: html
	html iframe 
		name: 'searchingToolbar';
		contents: packageTree;
		height: 600.
	"html render: selectorList."
	self selectClass: packageTree selectedClass.

	html iframe 
		class: 'classMethodContainer';
		name: 'bodyFrame';
		contents: classView;
		height: 600;
		width: 600