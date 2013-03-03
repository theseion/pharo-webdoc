generating
inheritanceDiagram
	"Return UML inheritance class diagram in yuml.me DSL"
	| associations classesWithSuperclass |
	classesWithSuperclass := self classes select: [:aClass | aClass respondsTo:#superclass].
	associations := classesWithSuperclass collect: [:class|
		self printClass: class inherits: class superclass
	].
	
	 ^ ',' join: associations.
	