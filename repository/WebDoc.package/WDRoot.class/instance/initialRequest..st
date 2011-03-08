hooks
initialRequest: aRequest
	
	| uriList classIndex selectorIndex class methodIndex method |
	super initialRequest: aRequest.
	uriList := aRequest uri path.
	popup := uriList size >= 2 and: [uriList second = 'popup'].
	classIndex := uriList indexOf: 'class'.
	(classIndex > 0 and: [classIndex ~~ uriList size])
		ifTrue: [
			class := Smalltalk at: (uriList at: (classIndex +1)) asSymbol ifAbsent: [^self].
			self selectClass: class.
			methodIndex := uriList indexOf: 'method'.
			(methodIndex > 0 and: [(methodIndex = (uriList size - 2)) 
				and: [(uriList at: methodIndex+1) = 'class']])
					ifTrue: [methodIndex := methodIndex + 1.
						class := class class].
			(methodIndex > 0 and: [methodIndex ~~ uriList size])
				ifTrue: [
					method := class methodDict at: ( uriList at: (methodIndex +1)) asSymbol ifAbsent:[^ self].
					self selectMethod: method]].
	
	selectorIndex := uriList indexOf: 'selector'.
	(selectorIndex > 0 and: [selectorIndex ~~ uriList size])
		ifTrue: [
			selectedSelector := (uriList at: selectorIndex +1) asSymbol].
	"I should do the same for methods"