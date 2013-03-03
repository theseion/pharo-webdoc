render-class
renderClass: aClass On:  html 
	html div 
		class: 'class'; 
		with: [
			html div class: 'name'; id:(aClass name); with: aClass name.
			self renderClassComment: aClass comment On: html.
			self renderSelectorsOfClass: aClass On: html. ]