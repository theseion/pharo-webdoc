generating
printClass: aClass inherits: otherClass
	"A class inherits otherClass in yuml.me DSL
	ex: [MyClass]^-[OtherClass]"
	^ (self printClass: otherClass), '^-', (self printClass: aClass)