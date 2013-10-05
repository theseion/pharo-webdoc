accessing
implementorsOf: aSelector
	| globalImplementors |
	"Use the class-side cache for the global implementations of a selector"
	globalImplementors := self class implementorsOf: aSelector.
	
	"only keep implementations which are in the current environment"
	^ globalImplementors select: [ :aMethod |
		self environment includesMethod: aMethod ]