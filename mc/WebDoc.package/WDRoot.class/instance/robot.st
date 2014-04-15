routes
robot
	<get>
	<path: 'robot.txt'>
   <produces: 'text/plain'>

	self requestContext respond: [ :response | | stream |
		response 
			contentType: 'text/plain'.]