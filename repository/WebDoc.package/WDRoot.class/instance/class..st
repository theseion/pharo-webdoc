routes
class: aClassName
	<get>
	<path: 'class/{aClassName}.html'>
	activeView := self classView.
	activeView selectClass: (Smalltalk at: aClassName asSymbol ifAbsent: [ nil ])