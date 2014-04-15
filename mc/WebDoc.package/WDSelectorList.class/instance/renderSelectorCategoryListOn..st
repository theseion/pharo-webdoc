rendering
renderSelectorCategoryListOn: html
	self categories doWithIndex: [ :symbolCategory :index|
		(self listItemAt: index on: html)
			with: [
				html anchor
					class: 'selector_link';
					url: (self urlForSelectorCategory: symbolCategory);
					with: symbolCategory ]]