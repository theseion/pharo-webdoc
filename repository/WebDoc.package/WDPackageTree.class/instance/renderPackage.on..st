as yet unclassified
renderPackage: package on: html
	html listItem 
		with: [
			html anchor
				callback: [ self selectPackage: package];
				with: package name.
				self renderClassesOfPackage: package on: html]