rendering
renderCommentOn: html
	html div
		class: 'docstring';
		with: [
			self method comment ifNotNil: [ :comment |
				html div class: 'discussion';
					withLineBreaks: comment asString ] ].
	self flag: 'TODO format method using markdown'