rendering
renderContentOn: html
	html anchor 
		name: self method methodClass name,self method selector;
		callback: [ ];
		with: [
			html 
				div
					class: 'method_details';
					with: [
						self renderSignatureOn: html.
						self renderCommentOn: html.
						self renderOverridesOn: html.
						self renderSourceOn: html]].
		.
	"html anchor: class name, '>>#', method selector"