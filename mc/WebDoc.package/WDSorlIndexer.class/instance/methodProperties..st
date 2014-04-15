as yet unclassified
methodProperties: aMethod
	| properties |
	properties := Dictionary new.
	properties at: #id put: aMethod identityHash.
	properties at: #category put: (Array with: #method).
	properties at: #source put: aMethod getSource asString.
	properties at: #name put: aMethod selector.
	properties at: #comments put: (aMethod comment ifNil: [ '']).
	properties at: #class put: aMethod methodClass theNonMetaClass name.
	properties at: #class_side put: aMethod methodClass isMeta.
	^ properties