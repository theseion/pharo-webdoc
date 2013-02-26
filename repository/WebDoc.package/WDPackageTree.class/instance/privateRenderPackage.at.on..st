rendering
privateRenderPackage: package at: anIndex on: html	
	index := index + 1.
	(self listItemAt: index on: html)
		with: [
			html anchor
				class: 'object_link';
				url: rootURL,'/package/', package name; 
				title: package name, ' (package)';
				target: 'classList';
				with: package name.
			html small
				class: 'search_info';
				with: 'Package ', package name].
	renderPackages pop.
	"self renderClassesOfPackage: package on: html"