rendering
renderClassComment: aString on: html
	html div 
		class: 'classComment'; 
		with: [
			self renderSectionTitle: 'Overview' on: html.
			html div
				class: 'docString';
				with: (WDCommentFormatter with: aString string rootURL: rootURL)]