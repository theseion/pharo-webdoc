as yet unclassified
renderSelectorLink: selector class: class on: html
	self renderClassLink: class on: html.
	html text: ' >> '.
	self renderSelectorLink: selector in: class on: html.