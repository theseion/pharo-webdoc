as yet unclassified
start
	self environment classesAndTraitsDo: [ :aClass|
		self commitClass: aClass].