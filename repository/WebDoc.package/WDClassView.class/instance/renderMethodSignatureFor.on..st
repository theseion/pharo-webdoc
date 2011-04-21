rendering
renderMethodSignatureFor: method on: html
	html span
		class: 'summary_signature';
		with: [
			html anchor
				url: '#', (method methodClass isMeta ifTrue: ['class/'] ifFalse:['']), 'method/', method selector; 
				with: method selector].