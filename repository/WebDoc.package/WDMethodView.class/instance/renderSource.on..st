as yet unclassified
renderSource: aMethod on: html
	html preformatted: aMethod getSource.
	html code
		class: 'methodSource'; 
		with: (SourceFormatter with: aMethod).