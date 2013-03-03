generating
inheritanceDiagramForPackage: aPackageInfo
	"Return URL to generate UML inheritance diagram on yuml.me.
	ex: http://yuml.me/diagram/scruffy;dir:lr;scale:75/class/[RBValueNode]^-[RBArrayNode],[RBValueNode]^-[RBAssignmentNode], ...."
	self addPackage: aPackageInfo.
	^ self baseUrl, self inheritanceDiagram, '.pdf'.