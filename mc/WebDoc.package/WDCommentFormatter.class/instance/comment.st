accessing
comment
	^ comment ifNil: [ 
		method ifNotNil: [
			comment := method ast methodComment ]]