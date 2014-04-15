rendering
initialRequest: aRequest
   | target |
	target := aRequest url path last. 
	(self allPackageNames includes: target) ifTrue: [
		selectedPackageName := target.
	].

	^ super initialRequest: aRequest.