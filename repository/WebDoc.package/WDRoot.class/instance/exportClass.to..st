exporting
exportClass: cls to: aFileReference
	self exportURL: (self urlForClass: cls) to: aFileReference.
	self exportURL: (self popupURLForClass: cls) to: aFileReference.
	
	self exportInstanceVariablesOf: cls to: aFileReference.
	self exportInstanceVariablesOf: cls class to: aFileReference.
	
	self exportMethods: cls methods to: aFileReference.
	self exportMethods: cls class methods to: aFileReference.