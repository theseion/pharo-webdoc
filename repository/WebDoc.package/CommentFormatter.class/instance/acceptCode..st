visiting
acceptCode: aCodeNode
	|formatter ast parser code|
	code :=  aCodeNode text.
	parser := RBParser new.
	parser errorBlock: [ :error :position|
		html code
			class: 'code';
			with: code.
		html space.
		^ self].
	parser initializeParserWith: code.
	ast := parser parseStatements: true.
	
	formatter := SourceFormatter ast: ast method: method.
	formatter useBreaks: false.
	html code 
		class: 'code';
		with: formatter.
	html space.
		 