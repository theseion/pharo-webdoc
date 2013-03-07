accessing
instVarList
	^ instVarList ifNil: [ 
			instVarList := self newChildView: WDInstanceVariableList ].