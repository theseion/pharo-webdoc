rendering
renderSelectorPopupOn: html
	html render: (WDSelectorPopupView for: selectedSelector root: self)