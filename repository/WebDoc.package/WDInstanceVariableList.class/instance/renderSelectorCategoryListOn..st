rendering
renderSelectorCategoryListOn: html
	self categories doWithIndex: [ :instVarName :index|
		(self listItemAt: index on: html)
			with: [
				html anchor
					class: 'selector_link';
					url: (self poupURLForInstanceVariable: instVarName inClass: viewClass);
					with: instVarName ]]