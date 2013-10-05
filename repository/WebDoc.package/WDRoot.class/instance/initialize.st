initialization
initialize
	super initialize.
	
	childViews := OrderedCollection new.
	environment := RBPackageEnvironment packageNamed: 'WebDoc'.
	
	"initialize file library"
	self fileLibrary.
	mainView := self newChildView: WDMainView.