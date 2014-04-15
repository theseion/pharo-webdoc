rendering
renderMethodLink: aMethod on: html
	^ self 
		renderMethodLink: aMethod
		named: (aMethod methodClass name, ' >> #', aMethod selector) 
		on: html