rendering
renderSignatureOn: html
	html paragraph
		class: 'signature';
		with: [
			showClassLinks 
				ifTrue: [ self renderClassLink: method methodClass on: html]
				ifFalse: [ html text: method methodClass name].
			html text: ' >> ' , selector ]