visiting
acceptText: aTextNode
	self flag: 'HACK: fix it please'.
	self wordSplitRegex
		matchesIn: aTextNode text asString
		do: [ :word| 
			self renderWord: word.]