rendering
shouldRenderAsSubpackage: package
self halt.
	hierarchy isEmpty
		ifTrue: [ 
			hierarchy push: package.
			^ false].
			
	(package name beginsWith: (hierarchy top name))
		ifTrue: [ 
			hierarchy push: package.
			^ true].
	
	hierarchy pop.
	^ false