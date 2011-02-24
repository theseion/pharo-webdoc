as yet unclassified
renderMethodTitle: aMethod on: html
	html div
		class: 'methodHeader';
		with: [
			self renderMethodOverrides: selectedMethod on: html.
			html space; 
				text: ' >> '; 
				space;
				text: aMethod selector]