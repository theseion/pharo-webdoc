initialization
initialize
	super initialize.
	environment := RBBrowserEnvironment new.
	rootComponent := WDRoot new.
	rootComponent rootURL: ''.
	codec := GRPharoUtf8Codec new.