rendering
renderSearchResult: aMethod on: html
	|class selector|
	selector := aMethod selector.
	class := aMethod methodClass.
	html anchor
		class: 'search_method_link';
		url: rootURL,'/class/', class theNonMetaClass name, '#', (class isMeta ifTrue: [ 'class/'] ifFalse: ['']), 'method/', selector;
		with: class name, ' >> ', selector.