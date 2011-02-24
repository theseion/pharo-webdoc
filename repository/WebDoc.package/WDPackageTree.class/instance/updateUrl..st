as yet unclassified
updateUrl: aUrl

	super updateUrl: aUrl.		
	selectedClass 	
		ifNotNil: [:class | aUrl addToPath: 'class/',class name]