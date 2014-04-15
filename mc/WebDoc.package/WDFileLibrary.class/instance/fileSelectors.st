accessing
fileSelectors
	^ self class selectors select: [ :selector|
		(selector endsWith: 'Js') or: [ selector endsWith: 'Css' ]]