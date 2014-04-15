rendering
renderMethodSignatureFor: method on: html
	html span
		class: 'summary_signature';
		with: [
			html anchor
				url: '#', (self urlSuffixForMethod: method); 
				with: method selector].