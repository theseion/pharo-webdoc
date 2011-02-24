as yet unclassified
renderPackage: package at: index on: html
	(self listItemAt: index on: html)
		with: [
			html anchor
				callback: [ self selectPackage: package];
				with: package name.
				self renderClassesOfPackage: package on: html]