rendering
renderCommentOn: html	
	html div
		class: 'docstring';
		with: [
			html div class: 'discussion';
				with: (WDCommentFormatter new 
					environment: self environment;
					method: method;
					rootURL: rootURL;
					yourself)].