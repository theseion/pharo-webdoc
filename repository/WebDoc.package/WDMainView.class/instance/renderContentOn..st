rendering
renderContentOn: html
	html div
		id: 'sidebar';
		with: [
			self renderPackagesOn: html.
			self renderClassesOn: html.
			html div
				id: 'dragbar'].
	self renderDetailViewOn: html.