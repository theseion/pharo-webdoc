initialization
initialize
	super initialize.
	
	childViews := OrderedCollection new.
	environment := RBBrowserEnvironment new.
	
	"initialize file library"
	self fileLibrary.
	mainView := self newChildView: WDMainView.