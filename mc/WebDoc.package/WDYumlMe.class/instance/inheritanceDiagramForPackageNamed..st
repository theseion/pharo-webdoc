generating
inheritanceDiagramForPackageNamed: aString
	"Return URL to generate UML inheritance diagram on yuml.me.
	ex: http://yuml.me/diagram/scruffy;dir:lr;scale:75/class/[RBValueNode]^-[RBArrayNode],[RBValueNode]^-[RBAssignmentNode], ...."
	self addPackageNamed: aString.
	^ self baseUrl, self inheritanceDiagram.