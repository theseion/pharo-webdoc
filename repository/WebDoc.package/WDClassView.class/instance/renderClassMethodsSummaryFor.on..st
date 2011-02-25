rendering
renderClassMethodsSummaryFor: class on: html 
	self
		renderMethodsSummarySectionFor: class class
		title: 'Class Method Summary'
		htmlClass: 'classMethodSummary'
		on: html
