rendering
renderListOn: html
	selector isNil 
		ifFalse: [ ^ self renderMethodListOn: html ].
	category isNil
		ifFalse: [ ^ self renderSelectorListOn: html].
	self renderSelectorCategoryListOn: html.
	