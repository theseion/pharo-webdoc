exporting
exportAllSelectorsTo: aFileReference
	| implementedSelectors |
	
	self exportURL: self urlForSelector to: aFileReference.
	
	self selectorView categories do: [ :name |
		self exportURL: (self urlForSelectorCategory: name) to: aFileReference ].
	
	SystemNavigation default allImplementedMessages 
		do: [ :symbol| self exportURL: (self urlForSelector: symbol) to: aFileReference ]
		displayingProgress: [ :symbol | 'Exporting symbol ', symbol storeString ] 