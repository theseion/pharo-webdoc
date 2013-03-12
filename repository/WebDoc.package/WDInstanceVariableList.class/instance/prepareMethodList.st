helper
prepareMethodList
	implementors := OrderedCollection new.
	
	self viewClass isTrait ifTrue: [ ^ self "traits don't have a proper API"].
	
	self viewClass withAllSubAndSuperclassesDo: [:class | 
			(class whichSelectorsAccess: self instVarName) do: [:sel |
					implementors add: class >> sel]].
			
	implementors sort: [ :a :b| 
			a methodClass = b methodClass
				ifTrue: [ a selector <= b selector ]
				ifFalse: [ a methodClass name <= b methodClass name ]]