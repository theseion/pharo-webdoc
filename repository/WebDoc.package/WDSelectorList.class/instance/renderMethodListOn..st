rendering
renderMethodListOn: html

	self initializeItems.
	
	html anchor
		target: '_searchingToolbar'.
		
	items withIndexDo: [ :method :index|
		self renderMethod: method at: index on: html]