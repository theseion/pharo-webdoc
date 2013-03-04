accessing
title
	selector ifNotNil: [ ^ 'Implementors of ', selector ].
	category ifNotNil: [ 
		category = self binaryCategory 
			ifTrue: [ ^ 'Binary Selectors' ].
		^ 'Selectors for "', category, '"' ].
	^ 'Selectors' 
