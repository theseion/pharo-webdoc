rendering
renderMethodListOn: html

	self prepareMethodList.
	
	html anchor
		target: '_searchingToolbar';
		with: [
			implementors withIndexDo: [ :method :index|
				self renderMethod: method at: index on: html]]