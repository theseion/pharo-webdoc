routes
main
	<get>
	<path: 'index.html'>
   <produces: 'text/html'>
	
   ^ self render: self mainView