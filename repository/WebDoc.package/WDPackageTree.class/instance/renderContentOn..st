as yet unclassified
renderContentOn: html 
	html div
		id: 'packageTree';
		with: [
			self renderSearchFieldOn: html.
			html unorderedList
				with: [ 
				packages do: [:package|
					self renderPackage: package on: html.
				]]].