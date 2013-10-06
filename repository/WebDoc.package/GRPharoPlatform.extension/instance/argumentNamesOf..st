*WebDoc
argumentNamesOf: aCompiledMethod
	^ aCompiledMethod methodNode arguments collect: [ :each | each name ]