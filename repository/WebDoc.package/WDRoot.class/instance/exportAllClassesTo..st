exporting
exportAllClassesTo: aFileReference
	
	| classes |
	
	classes := self environment allNonMetaClasses.
	classes sort: [ :a :b| a name <= b name ].
	
	classes 
		do: [ :cls | self exportClass: cls to: aFileReference ]
		displayingProgress: [ :cls| 'Exporting ', cls name ].