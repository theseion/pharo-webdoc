rendering
renderSelectorLink: method class: class on: html
	self renderClassLink: class on: html.
	html text: ' >> '.
	self renderSelectorLink: method in: class on: html.