render-package
renderPackage: aPackageInfo On: html IfNotInCache: aBlock
	"Render block if given package not in cache"
	| newContentStart stream key|	
	"Have we generated a copy of the html already?"
	key := aPackageInfo packageName.
	self class htmlCache at: (key)  ifPresent:
		[ :cachedHtml | html html: cachedHtml. ^ self ].
	
	newContentStart := html context document stream position + 1.	
	aBlock value.  "< -- Generate html here "

	"Then cache it"	
	stream := html context document stream contents.
	self class htmlCache at: key  put: (stream copyFrom: newContentStart to: stream size).