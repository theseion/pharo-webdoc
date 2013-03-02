visiting
acceptText: aTextNode
	aTextNode text
		regex: ('([^\s.,'']+)|([,.'' ]+)')
		matchesDo: [ :word| 
			self renderWord: word.]