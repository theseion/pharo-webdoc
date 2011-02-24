as yet unclassified
renderListOn: html 
	packages doWithIndex: [ :package :index|
		self renderPackage: package at: index on: html]