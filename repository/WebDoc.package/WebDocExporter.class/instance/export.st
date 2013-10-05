action
export
	"Export the contents of #environment to #destination"
	| webdoc |
	webdoc := WDRoot new.
	webdoc 
		environment: self environment;
		exportAllTo: self destination