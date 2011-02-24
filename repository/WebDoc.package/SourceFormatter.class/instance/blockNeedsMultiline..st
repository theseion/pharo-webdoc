as yet unclassified
blockNeedsMultiline: aBlockNode
	| body statement |
	body := aBlockNode body.
	
	body statements size > 1 ifTrue: [ ^ true].
	
	statement := body statements first.
	self halt.
	^ false.