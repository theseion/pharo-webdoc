rendering
renderMethodSummaryFor: selectors in: class on: html
	selectors do: [ :selector|
		html listItem
			with: [ self renderMethodSignatureFor: (class methodDict at: selector) on: html]]