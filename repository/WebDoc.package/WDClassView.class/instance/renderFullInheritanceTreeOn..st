rendering
renderFullInheritanceTreeOn: html
	html unorderedList
		class: 'fullTree';
		with: [
			html listItem
				with: [self renderClassLink: self selectedClass on: html].
			self selectedClass allSuperclasses reverse do: [ :class|
				html listItem
					class: 'next';
					with: [self renderClassLink: class on: html]]]
		