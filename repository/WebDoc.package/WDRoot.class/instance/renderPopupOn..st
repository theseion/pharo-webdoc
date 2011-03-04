rendering
renderPopupOn: html
	self selectedMethod ifNil: [ ^ self].
	html render: (WDMethodPopupView for: selectedMethod root: self)