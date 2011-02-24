as yet unclassified
renderClassesOfPackage: package on: html
	html unorderedList with: [
		package allDefinedClasses do: [:class|
			html listItem 
				with:  [
					html anchor
						callback: [ self selectClass: class];
						with: class name]]]
	