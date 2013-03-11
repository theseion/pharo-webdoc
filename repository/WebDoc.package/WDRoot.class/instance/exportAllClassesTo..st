exporting
exportAllClassesTo: aFileReference
	
	| classes |
	
	classes := Array streamContents: [ :s| 
					SystemNavigation default allBehaviorsDo: [ :cls| s nextPut: cls]].
	classes sort: [ :a :b| a name <= b name ].
	
	classes 
		do: [ :cls | self exportClass: cls to: aFileReference]
		displayingProgress: [ :cls| 'Exporting ', cls name ].