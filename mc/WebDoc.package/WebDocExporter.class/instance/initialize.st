initialization
initialize
	super initialize.
	environment := RBBrowserEnvironment new.
	codec := GRPharoUtf8Codec new.
	rootComponent := WDRoot new.
	rootComponent rootURL: ''.