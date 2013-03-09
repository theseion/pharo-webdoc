rendering
renderClassesOn: html
	
	html div 
		id: 'classes';
		with: [
			html iframe	
				name: 'classList';
				id: 'classList';
				url: (self urlForPackage: 'Kernel')].