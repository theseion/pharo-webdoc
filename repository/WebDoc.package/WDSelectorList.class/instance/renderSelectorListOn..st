as yet unclassified
renderSelectorListOn: html
	html unorderedList
		with: [
			implementors do: [:method|
				html listItem
					with: [self renderSelectorLink: method class: method methodClass on: html]]].