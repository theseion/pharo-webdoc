visiting
visitNodes: aCollection
	aCollection do: [ :aNode | self visitNode: aNode ].