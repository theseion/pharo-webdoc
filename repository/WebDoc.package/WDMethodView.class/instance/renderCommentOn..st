rendering
renderCommentOn: html
	[ self method comment ifNil: [ ^ self] ] 
		on: Error
		do: [ ^ self ].
	
	html div
		class: 'docstring';
		with: [
			html div class: 'discussion';
				with: (CommentFormatter new 
							comment: self method comment;
							method: method;
							rootURL: rootURL;
							yourself)].