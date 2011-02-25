rendering
renderListOn: html 
"Transcript << 'redraw';cr."
	html anchor
		target: '_searchingToolbar';
		with: [
			packages doWithIndex: [ :package :index|
				self renderPackage: package at: index on: html]]