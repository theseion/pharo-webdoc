visiting
acceptCode: aCodeNode
	|formatter ast parser code|
	code :=  aCodeNode text.
	parser := RBParser new.
	parser errorBlock: [ 
		^ html code
			class: 'code';
			with: code].
	parser initializeParserWith: code.
	ast := parser parseStatements: true.
	
	formatter := SourceFormatter ast: ast method: method.
	formatter useBreaks: false.
	html code 
		class: 'code';
		with: formatter.
		 