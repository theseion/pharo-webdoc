rendering
reducedSuperClassesOf: class
	"Return a list of superclasses up to Object for subclasses of Object and up to Object class on class-side"
	 ^ Array streamContents: [ :stream |
		class allSuperclassesDo: [ :superclass|
			(superclass = Object or: [ superclass = Object class])
				ifTrue: [ ^ stream contents ].
			stream nextPut: superclass]]