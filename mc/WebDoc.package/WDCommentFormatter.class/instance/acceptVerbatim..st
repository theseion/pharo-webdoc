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
	
	formatter := WDSourceFormatter ast: ast method: method.
	formatter rootURL: rootURL.
	html div 
		class: 'code';
		with: formatter.
	html space.