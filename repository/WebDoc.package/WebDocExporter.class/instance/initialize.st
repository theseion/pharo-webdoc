initialization
initialize
	super initialize.
	environment := RBBrowserEnvironment new.
	rootComponent := WDRoot new.
	codec := GRPharoUtf8Codec new.