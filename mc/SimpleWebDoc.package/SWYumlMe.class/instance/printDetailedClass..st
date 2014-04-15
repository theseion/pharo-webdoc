generating
printDetailedClass: aClass

	^ String streamContents: [ :s |
		s << '[' << aClass name.
		s <<'|'.
		aClass instVarNames 
			do: [ :instVar | s << instVar ]
			separatedBy: [ s nextPut: $; ].
		aClass = selectedClass 
			ifTrue: [ s << '{bg:blue}'].
		s << ']' ].