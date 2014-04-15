routes
class: aClassName
	<get>
	<path: 'class/{aClassName}.html'>
   <produces: 'text/html'>

	activeView := self classView.
	activeView selectClass: (self classNamed: aClassName urldecoded).
	^ self render: activeView