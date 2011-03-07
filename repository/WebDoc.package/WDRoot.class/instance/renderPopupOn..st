rendering
renderPopupOn: html
	self selectedMethod 
		ifNotNil: [ ^ self renderMethodPopupOn: html].
	self selectedSelector 
		ifNotNil: [ ^ self renderSelectorPopupOn: html].