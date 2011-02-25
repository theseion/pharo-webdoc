as yet unclassified
renderSignatureOn: html
	html div
		class: 'signature';
		with: [
			self renderClassLink: self viewClass on: html.
			html space; 
				text: ' >> '; 
				space;
				text: selector]