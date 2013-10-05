actions
export
	| directory exporter |
	directory := (self optionAt: 'export') asFileReference.
	exporter := WebDocExporter packages: self packages.
	exporter 
		exportTo: directory.