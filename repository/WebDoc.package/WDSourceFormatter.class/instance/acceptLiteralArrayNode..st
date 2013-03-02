visitor-double dispatching
acceptLiteralArrayNode: aRBArrayLiteralNode 
	| restoreInLilteralArray |
	html span
		class: 'stLiteralArray';
		with: [
			html text: (aRBArrayLiteralNode isForByteArray 
						ifTrue: ['#[']
						ifFalse: ['#(']).
						
			self formatLiteralArrayNodes: aRBArrayLiteralNode.
			
			html text: (aRBArrayLiteralNode isForByteArray ifTrue: [$]] ifFalse: [$)])]