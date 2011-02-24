as yet unclassified
renderClassesOfPackage: package on: html
	|classes|
	classes := package allDefinedClasses.
	html unorderedList with: [
		classes doWithIndex: [:class :index|
			self renderClass: class at: index on: html]]
	