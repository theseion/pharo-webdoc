rendering
renderContentOn: html
	html render: activeView.
	self renderGoogleAnalyticsOn: html.
	"popup 
		ifTrue: [ ^ self renderPopupOn: html].
	
	html div id: 'header';
		with: [ self renderHeaderOn: html ].

	(self selectedSelector isNil not and: [ self selectedClass isNil ])
		ifTrue: [ self renderSelectorListOn: html]
		ifFalse:[  
			self renderPackageTreeOn: html.
			html div id: 'content';
				class: 'classMethodContainer';
				with: [ self renderClassViewOn: html ]].
	
	html div id: 'footer';
		with: 'Here be credits'."