rendering
renderStringWithBreaks: aString On: html
	"Replace line breaks with WABreakTag when rendering "

	(aString findTokens: Character cr) do: [ :each | 
		html render: each ] separatedBy: [ html break ]