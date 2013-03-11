exporting
exportInstanceVariablesOf: cls to: aFileReference
	self exportURL: (self poupURLForInstanceVariables: cls ) to:  aFileReference.
	cls instVarNames do: [ :name|
		self exportURL: (self poupURLForInstanceVariable: cls inClass: aFileReference) to: aFileReference ]