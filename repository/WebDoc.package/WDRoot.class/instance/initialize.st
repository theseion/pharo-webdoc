initialization
initialize
	super initialize.
	packageTree := WDPackageTree new.
	classView := WDClassView new.
	methodView := WDMethodView new.
	selectorList := WDSelectorList new.