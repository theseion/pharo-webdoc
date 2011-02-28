visiting
acceptText: aTextNode
	aTextNode text
		regex: ('([^ ]*)')
		matchesDo: [ :word| 
			self renderWord: word.
			html space]