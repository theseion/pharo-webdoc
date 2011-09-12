as yet unclassified
formatMethod: aMethod value: aString
	| url |
	url := rootURL,'/class/', aMethod methodClass theNonMetaClass name, (aMethod methodClass isMeta ifTrue: ['#class/method/'] ifFalse:['#method/']), aMethod methodSymbol asString.
	
	html anchor 
		url: url;
		class: 'stSelector'; 
		with: aString.