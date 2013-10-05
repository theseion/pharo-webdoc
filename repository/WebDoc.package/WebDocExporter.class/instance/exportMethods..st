exporting
exportMethods: methods
	methods 
		do: [ :method | 
			self exportURL: (self popupURLForMethod: method) ]
		displayingProgress: 'exporting methods...'