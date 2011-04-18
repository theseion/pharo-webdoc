rendering
renderClassListOn: html

	implementors := SystemNavigation default allImplementorsOf: self selector.
	implementors sort: [ :a :b| a methodClass name <= b methodClass name].
	
	html anchor
		target: '_searchingToolbar';
		with: [
			implementors withIndexDo: [ :method :index|
				self renderMethod: method at: index on: html]]