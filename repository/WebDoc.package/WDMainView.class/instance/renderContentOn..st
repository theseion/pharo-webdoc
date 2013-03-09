rendering
renderContentOn: html
	self flag: 'split into submethods'.
	html div
		id: 'sidebar';
		with: [
			self renderPackagesOn: html.
			self renderClassesOn: html.
			html div
				id: 'dragbar'].
	self renderDetailViewOn: html.