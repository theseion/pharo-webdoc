as yet unclassified
renderContentOn: html
	selectedMethod ifNil: [ ^ html text: 'no method selected' ].
	self renderMethodTitle: selectedMethod on: html.
	self renderSource: selectedMethod on: html.