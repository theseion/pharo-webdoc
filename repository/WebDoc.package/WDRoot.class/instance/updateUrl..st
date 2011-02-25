updating
updateUrl: aUrl
	super updateUrl: aUrl.
	"self selectedPackage
		ifNotNil: [:pack | aUrl addToPath: 'package/', pack name]."
	self selectedClass
		ifNotNil: [:class | aUrl addToPath: 'class/', class name].
	self selectedMethod
		ifNotNil: [:method | aUrl addToPath: 'method/', method selector].