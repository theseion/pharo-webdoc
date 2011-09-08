rendering
renderSourceOn: html
	"html preformatted: method getSource."
	html div
		class: sourceStyleClass;
		with: [
			html code
				class: 'methodSource'; 
				with: (SourceFormatter with: self method rootURL: rootURL) ].