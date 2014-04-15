exporting
exportInstanceVariablesOf: cls
	self exportURL: (self poupURLForInstanceVariables: cls ).
	cls instVarNames do: [ :name|
		self exportURL: (self poupURLForInstanceVariable: name inClass: cls) ]