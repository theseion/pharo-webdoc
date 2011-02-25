rendering
renderClassMethodsDetailsFor: class on: html
.	self
		renderMethodsDetailsSectionFor: class class
		title: 'Class Method Details'
		htmlClass: 'classMethodDetail'
		on: html
