exporting
exportAllSymbols

	self exportURL: self urlForSelector.
	self selectorView categories 
		do: [ :category | 
			self exportURL: (self urlForSelectorCategory: category).
			
			(self selectorView selectorsForCategory: category)
				do: [ :selector | 
					self exportURL: (self urlForSelector: selector).
					self flag: #todo. "not generating popups"
					"self exportURL: (self popupURLForSelector: selector)" ] 
				displayingProgress: 'Exporting Used Selectors in Category: "', category, '"' ] 
		displayingProgress: 'Exporting Symbol Categories'.
		