generating
inheritanceDiagramForClass: aClass
	selectedClass := aClass.
	"Return URL to generate UML inheritance diagram on yuml.me.
	ex: http://yuml.me/diagram/scruffy;dir:lr;scale:75/class/[RBValueNode]^-[RBArrayNode],[RBValueNode]^-[RBAssignmentNode], ...."
	self classes 
		addAll: aClass withAllSuperclasses;
		addAll: aClass allSubclasses.
	^ self baseUrl, self inheritanceDiagram, '.pdf'.