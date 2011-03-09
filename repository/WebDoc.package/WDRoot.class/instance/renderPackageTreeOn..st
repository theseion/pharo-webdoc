rendering
renderPackageTreeOn: html

	html render: packageTree.
	self selectClass: packageTree selectedClass.  