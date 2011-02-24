updating
updateUrl: aUrl

	super updateUrl: aUrl.		
	selectedClass 	
		ifNotNil: [:class | aUrl path
							add: 'class' after: 'doc';
							add: class name after: 'class']