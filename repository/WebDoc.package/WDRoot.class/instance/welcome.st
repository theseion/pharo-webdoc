routes
welcome
	<get>
	<path: 'welcome.html'>
   <produces: 'text/html'>
	
	^ self render: self welcomeView.