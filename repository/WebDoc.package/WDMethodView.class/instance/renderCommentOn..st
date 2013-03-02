rendering
renderCommentOn: html	
	html div
		class: 'docstring';
		with: [
			html div class: 'discussion';
				with: (WDCommentFormatter new 
							method: method;
							rootURL: rootURL;
							yourself)].