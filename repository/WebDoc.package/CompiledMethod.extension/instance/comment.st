*WebDoc-Extension
comment
	"Return the first comment of the receiver"
	"(self>>#comment) comment"
	
	"happens that there are parsing issues with the method."
	^ [ (self methodClass firstPrecodeCommentFor: self selector) ifNil:[ '' ]]
		on: Error do: [ :e| 
			"In the case of errors we ignore them and return an empty string"
			^ '' ]