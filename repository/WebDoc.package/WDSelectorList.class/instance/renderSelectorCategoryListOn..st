rendering
renderSelectorCategoryListOn: html
	| selectors |
	selectors := SystemNavigation default allImplementedMessages.
	#(symbols a b c d e f g h i j k l m n o p q r s t u v w x y z) doWithIndex: [ :symbolCategory :index|
		(self listItemAt: index on: html)
			with: [
				html anchor
					class: 'selector_link';
					url: rootURL,'/selector/category/', symbolCategory;
					with: symbolCategory.]]