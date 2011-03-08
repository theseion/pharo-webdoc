as yet unclassified
visitNode: item
	item isCollection 
		ifTrue: [
			^ item do: [:each| self visitNode: each]].
	self visitNode: item.
	