render-class
renderClassSummary: aClass On: html
	aClass hasComment ifTrue: [
		html listItem: [
			html anchor url: ('#',aClass name); with: aClass name, ': '.
			html text: (aClass comment asString findTokens: '.(') first
		].
	]