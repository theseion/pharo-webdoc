as yet unclassified
renderSourceOn: html
	"html preformatted: method getSource."
	html code
		class: 'methodSource'; 
		with: (SourceFormatter with: method).