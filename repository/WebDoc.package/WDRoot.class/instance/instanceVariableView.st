accessing
instanceVariableView
	^ instVarList ifNil: [ 
			instVarList := self newChildView: WDInstanceVariableList ].