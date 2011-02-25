initialization
initialize
	super initialize.
	packageTree := WDPackageTree on: self.
	classView := WDClassView on: self.
	methodView := WDMethodView on: self.
	selectorList := WDSelectorList new.
	session := self session.