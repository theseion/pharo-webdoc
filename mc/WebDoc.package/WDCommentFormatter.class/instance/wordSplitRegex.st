accessing
wordSplitRegex
	^ wordSplitRegex ifNil: [ wordSplitRegex := '([^\s.,'']+)|([,.'' ]+)' asRegex ]