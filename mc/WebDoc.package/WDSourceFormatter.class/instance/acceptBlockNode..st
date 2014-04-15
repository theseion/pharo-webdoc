visitor-double dispatching
acceptBlockNode: aBlockNode 

	tempNames addAll: aBlockNode argumentNames.
	html  span
		class: 'stBlock';
		with: [
			self 
				acceptBlockNode: aBlockNode
				startBlockString: '['
				endBlockString: ']']