as yet unclassified
formatLiteralArrayNodes: aRBArrayLiteralNode
	| restoreInLilteralArray |
	restoreInLilteralArray := inLiteralArray.
	inLiteralArray := true.
	aRBArrayLiteralNode contents
		do: [:each | self visitNode: each]
		separatedBy: [html space].
	inLiteralArray := restoreInLilteralArray.