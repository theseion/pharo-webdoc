visitor-double dispatching
visitLiteralArrayNode: aRBArrayLiteralNode 
	|  |
	html span
		class: 'stLiteralArray';
		with: [
			html text: (aRBArrayLiteralNode isForByteArray 
						ifTrue: ['#[']
						ifFalse: ['#(']).
						
			self formatLiteralArrayNodes: aRBArrayLiteralNode.
			
			html text: (aRBArrayLiteralNode isForByteArray ifTrue: [$]] ifFalse: [$)])]