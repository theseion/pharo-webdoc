as yet unclassified
renderSignatureOn: html
	html heading
		level3;
		with: [
			self renderClassLink: method methodClass on: html.
			html text: ' >> ' , selector ]