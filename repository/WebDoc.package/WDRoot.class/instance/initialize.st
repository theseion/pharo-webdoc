initialization
initialize
	super initialize.
	"initialize file library"
	self fileLibrary.
	mainView := self newChildView: WDMainView.
	environment := RBBrowserEnvironment new.