render-class
renderClassComment: aString On: html
	html div class: 'comment'; with: [
		self renderStringWithBreaks: (aString string) On: html].