actions
export
	| directory exporter packages |
	directory := (self optionAt: 'export') asFileReference.
	packages := self packages.
	exporter := packages isEmpty
		ifTrue: [ WebDocExporter new ]
		ifFalse: [ WebDocExporter packages: packages ].
	exporter 
		exportTo: directory.
	self exitSuccess.