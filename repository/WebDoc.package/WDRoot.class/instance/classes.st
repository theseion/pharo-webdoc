routes
classes
	<get>
	<path: 'class.html'>
   <produces: 'text/html'>
	
	self halt.
	activeView := self newChildView: WDMainView