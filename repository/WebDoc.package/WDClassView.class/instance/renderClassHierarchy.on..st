as yet unclassified
renderClassHierarchy: aClass on: html
	html div
		id: 'classHieararchy';
		with: [
			html orderedList
				with: [
					aClass allSuperclasses reverse do:[ :class|
						html listItem with: [
							html anchor 
								url: '/class/', class name;
								with: class name.
							]
						]
					]]