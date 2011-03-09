rendering
renderSelectorListOn: html
	html render: (WDSelectorPopup for: selectedSelector root: self)