as yet unclassified
renderSignatureOn: html
	html div
		class: 'signature';
		with: [
			self renderClassLink: class on: html.
			html space; 
				text: ' >> '; 
				space;
				text: selector]