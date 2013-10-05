initialization
initialize
	childViews := OrderedCollection new.
	environment := RBBrowserEnvironment new.
	
	super initialize.
	
	"initialize file library"
	self fileLibrary.
	mainView := self newChildView: WDMainView.