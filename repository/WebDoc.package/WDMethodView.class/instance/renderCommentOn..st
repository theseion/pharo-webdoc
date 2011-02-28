rendering
renderCommentOn: html
	html div
		class: 'docstring';
		with: [
			self method comment ifNotNil: [ :comment |
				html div class: 'discussion';
					with: (CommentFormatter comment: comment method: method)]].