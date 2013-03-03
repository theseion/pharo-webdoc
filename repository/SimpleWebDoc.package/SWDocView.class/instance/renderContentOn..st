rendering
renderContentOn: html	
	| aPackageInfo |
	
	html div id: 'wrapper'; with: [
		html div id:'navigation'; with: [
			self renderPackageSelectOn: html.
		].
		
		selectedPackageName ifNotNil: [
			aPackageInfo := self packageNamed: selectedPackageName.
			self renderPackage: aPackageInfo On: html.
		]
	]