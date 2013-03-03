render-selectors
renderSelector: aSelector OfClass: aClass On: html
	"Render given selector"
	
	html div class:'selector'; with:[
		html div 
			class:'name'; 
			class:'class-side' if:(aClass class localSelectors includes:aSelector);
			with: aSelector.
		html div class:'comment'; with: [ | comment |
			[ comment :=  (aClass precodeCommentOrInheritedCommentFor: aSelector)
			] on: UndeclaredVariableWarning do: [].
                  comment ifNotNil: [self renderStringWithBreaks:comment On:html]
		]
	]