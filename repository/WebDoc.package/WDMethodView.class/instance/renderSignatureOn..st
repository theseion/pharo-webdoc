rendering
renderSignatureOn: html
	html paragraph
		class: 'signature';
		with: [
			self renderClassLink: method methodClass on: html.
			html text: ' >> ' , selector ]