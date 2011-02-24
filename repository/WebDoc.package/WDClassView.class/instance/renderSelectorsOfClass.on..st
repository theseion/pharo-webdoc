rendering
renderSelectorsOfClass: aClass on: html
	"Render all methods with their comments of given class"
	
	| allSelectors |
	allSelectors :=  aClass instanceAndClassSelectors asArray sort.
	
	html unorderedList 
		class: 'selectors'; 
		with:[
			allSelectors do: [:aSelector| 
				self renderSelector: aSelector ofClass: aClass on: html.]]