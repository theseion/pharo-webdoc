accessing
title
	^	selector 
			ifNil: [ 'Instance Variables']
			ifNotNil: [ 'Methods accessing ', selector ]