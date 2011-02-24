rendering-formatting
formatPragmasFor: aMethodNode
	aMethodNode pragmas ifEmpty: [ ^ self ].
	html span 
		class: 'stPragmas';
		with: [
			aMethodNode pragmas do: [ :each | self visitNode: each; indent ]]