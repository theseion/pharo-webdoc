rendering
renderSearchFieldOn: html
	(category isNil and: [ selector isNil ])
		ifTrue: [ ^ self ].
	super renderSearchFieldOn: html.