as yet unclassified
renderSelectorListOn: html
	| name |
	html unorderedList
		with: [
			implementors do: [:method|
				html listItem
					with: ["self renderSelectorLink: method class: method methodClass on: html."
						name :=  method methodClass name, ' >> ',  method selector.
						self renderSelector:  selector named: name in:  method methodClass on: html.]]].