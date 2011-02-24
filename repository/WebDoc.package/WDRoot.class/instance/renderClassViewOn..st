as yet unclassified
renderClassViewOn: html.
	
	classView selectClass: packageTree selectedClass.
	html render: classView.