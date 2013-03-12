exporting
exportAllSymbolsTo: aFileReference

	self exportURL: self urlForSelector to: aFileReference.
	self selectorView categories 
		do: [ :category | 
			self exportURL: (self urlForSelectorCategory: category) to: aFileReference.
			
			(self selectorView selectorsForCategory: category)
				do: [ :selector | 
					self exportURL: (self urlForSelector: selector) to: aFileReference.
					self exportURL: (self popupURLForSelector: selector) to: aFileReference  ] 
				displayingProgress: 'Exporting Used Selectors in Category ', category ] 
		displayingProgress: 'Exporting Symbol Categories'.
		