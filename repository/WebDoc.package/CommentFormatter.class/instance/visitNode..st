as yet unclassified
visitNode: item
	item isString ifTrue: [^ html text: item].
	self flag: 'fix the parser to not leak wrong nodes'.
	item isCollection 
		ifTrue: [
			^ item do: [:each| self visitNode: each]].
	item ifNil: [ ^ self].
	^ item visit: self.
	