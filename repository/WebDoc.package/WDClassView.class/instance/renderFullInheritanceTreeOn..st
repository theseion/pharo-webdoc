rendering
renderFullInheritanceTreeOn: html
	html unorderedList
		class: 'fullTree';
		with: [
			html listItem
				with: [self renderClassLink: selectedClass on: html].
			selectedClass allSuperclasses reverse do: [ :class|
				html listItem
					class: 'next';
					with: [self renderClassLink: class on: html]]]
		