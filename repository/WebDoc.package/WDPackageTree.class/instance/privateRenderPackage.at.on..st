rendering
privateRenderPackage: package at: anIndex on: html	
	index := index + 1.
	(self listItemAt: index on: html)
		with: [
			html anchor
				class: 'object_link';
				url: '/doc/package/', package name; 
				title: package name, ' (package)';
				target: 'list2';
				with: package name.
			html small
				class: 'search_info';
				with: 'Package ', package name].
	renderPackages pop.
	"self renderClassesOfPackage: package on: html"