as yet unclassified
visitNode: item
	item isCollection 
		ifTrue: [
			^ item do: [:each| self visitNode: each]].
	item ifNil: [ ^ self].
	^ item visit: self.
	