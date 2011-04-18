rendering
renderPackage: package at: index on: html
	index > 10 ifTrue: [ ^ self].
	(self listItemAt: index on: html)
		with: [
			html anchor
				callback: [ self selectPackage: package];
				title: package name, ' (package)';
				with: package name.
			html small
				class: 'search_info';
				with: 'Package ', package name].
	self renderClassesOfPackage: package on: html