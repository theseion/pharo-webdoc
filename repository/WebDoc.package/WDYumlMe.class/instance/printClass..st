generating
printClass: aClass
	"A class in yuml.me DSL"
	^ (aClass = selectedClass or: [ selectedClass inheritsFrom: aClass ])
		ifTrue: [ self printDetailedClass: aClass ]
		ifFalse: [ '[' , aClass name , ']' ]