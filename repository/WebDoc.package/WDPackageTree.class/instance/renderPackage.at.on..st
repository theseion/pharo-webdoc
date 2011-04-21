rendering
renderPackage: package at: anIndex on: html
	hierarchy isEmpty
		ifTrue: [ 
			hierarchy push: package.
			^ self privateRenderPackage: package at: anIndex on: html].
			
	(package name beginsWith: (hierarchy top name))
		ifTrue: [ 
			hierarchy push: package.
			html unorderedList
				with: [ 
					self privateRenderPackage: package at: anIndex on: html.
					self renderNextPackageOn: html]].
	
	hierarchy pop.
	self renderNextPackageOn: html.