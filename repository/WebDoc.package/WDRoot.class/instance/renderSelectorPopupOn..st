rendering
renderSelectorPopupOn: html
	html render: (WDSelectorPopup for: selectedSelector root: self)