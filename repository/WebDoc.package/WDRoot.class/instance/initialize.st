initialization
initialize
	super initialize.
	"initialize file library"
	self fileLibrary.
	mainView := self newChildView: WDMainView.
	[ self initializeRoutes ] on: Error do: [ :e|
	self initializeRoutes ]