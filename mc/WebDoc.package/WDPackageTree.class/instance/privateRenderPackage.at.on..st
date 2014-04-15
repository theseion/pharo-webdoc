rendering
privateRenderPackage: package at: anIndex on: html	
	| packageName |
	index := index + 1.
	packageName := package packageName.
	(self listItemAt: index on: html)
		with: [
			html anchor
				class: 'object_link';
				url: (self urlForPackage: packageName); 
				title: packageName, ' (package)';
				target: 'classList';
				with: packageName.
			html small
				class: 'search_info';
				with: 'Package ', packageName].
	renderPackages pop.
	"self renderClassesOfPackage: package on: html"