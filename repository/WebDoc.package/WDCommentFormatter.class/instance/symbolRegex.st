accessing
symbolRegex 
	^ symbolRegex ifNil: [ symbolRegex := '[a-z][\w:]+\:' asRegex ]