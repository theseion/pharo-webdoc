visiting
acceptVerbatim: aPPMarkdownVerbatim 
	|formatter ast|
	ast := RBParser 
		parseMethod: aPPMarkdownVerbatim text
		onError: [ :error :position|
			html div
				class: 'code';
				with: aPPMarkdownVerbatim text.
			html space.
			^ self].
	
	formatter := SourceFormatter ast: ast method: method.
	html div 
		class: 'code';
		with: formatter.
	html space.