rendering
renderContentOn: html

	html div id: 'header';
		with: [ self renderHeaderOn: html ].


	html div id: 'content';
		class: 'classMethodContainer';
		with: [ self renderClassViewOn: html ].
	
	html div id: 'footer';
		with: 'Here be credits'