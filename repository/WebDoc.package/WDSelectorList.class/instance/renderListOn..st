rendering
renderListOn: html
	selector isNil 
		ifFalse: [ ^ self renderClassListOn: html ].
	category isNil
		ifFalse: [ ^ self renderSelectorListOn: html].
	self renderSelectorCategoryListOn: html.
	