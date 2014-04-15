rendering
renderMethodListOn: html
	
	html anchor
		target: '_searchingToolbar'.
		
	self items withIndexDo: [ :method :index|
		self renderMethod: method at: index on: html]