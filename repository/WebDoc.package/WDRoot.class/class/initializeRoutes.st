initialization
initializeRoutes
	self allInstancesDo: [ :wdRoot| 
		wdRoot initializeRoutes ]