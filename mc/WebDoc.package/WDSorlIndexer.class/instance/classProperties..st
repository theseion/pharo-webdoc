as yet unclassified
classProperties: aClass
	| properties  |
	properties := Dictionary new.
	properties at: #id put: aClass identityHash.
	properties at: #category put: (Array with: #class).
	properties at: #name put: aClass name.
	"properties at: #instVars put: aClass instVarNames."
	properties at: #superclass put: aClass superclass name.
	properties at: #comments put: (aClass comment ifNil: ['']).
	^ properties