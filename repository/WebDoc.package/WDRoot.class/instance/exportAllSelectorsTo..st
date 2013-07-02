exporting
exportAllSelectorsTo: aFileReference
	
	self exportURL: self urlForSelector to: aFileReference.
	
	self selectorView categories do: [ :name |
		self exportURL: (self urlForSelectorCategory: name) to: aFileReference ].
	
	self environment allSelectors
		do: [ :symbol| self exportURL: (self urlForSelector: symbol) to: aFileReference ]
		displayingProgress: [ :symbol | 'Exporting symbol ', symbol storeString ] 