rendering
renderSignatureOn: html
	html paragraph
		class: 'signature';
		with: [
			self renderClassLink: self viewClass on: html.
			html text: ' >> ' , selector ]