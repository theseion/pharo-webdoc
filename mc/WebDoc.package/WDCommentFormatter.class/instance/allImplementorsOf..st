accessing
allImplementorsOf: aSelector
	| globalImplementors |
	"Use the class-side cache for the global implementations of a selector"
	globalImplementors := self class allImplementorsOf: aSelector.
	
	"only keep implementations which are in the current environment"
	^ globalImplementors select: [ :aMethod |
		self environment includesMethod: aMethod ]