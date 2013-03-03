convenience
allSelectorsOfClass: aClass
	"Render instance and class selectors for given class."
	^ aClass instanceAndClassSelectors asArray sort.