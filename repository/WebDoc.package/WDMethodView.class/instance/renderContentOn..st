rendering
renderContentOn: html
	html div
		class: 'method_details';
		with: [
			self renderSignatureOn: html.
			self renderCommentOn: html.
			self renderOverridesOn: html.
			self renderSourceOn: html]