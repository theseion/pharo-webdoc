render-selectors
renderSelectorsOfClass: aClass On: html
	"Render all methods with their comments of given class"
	
	| allSelectors |
	allSelectors :=  self allSelectorsOfClass: aClass.
	
	html div class: 'selectors'; with:[
		allSelectors do: [:aSelector| self renderSelector: aSelector OfClass: aClass On: html.]
	]