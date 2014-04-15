*WebDoc-accessing
methodComment
	"Return a method comment string consisting of the first comments which are not interrupted by another ast node".
	^ String streamContents: [ :stream |
		self comments 
			do: [ :interval | stream next: interval size -2 putAll: self source startingAt: interval first+1 ]
			separatedBy: [ stream cr ]]