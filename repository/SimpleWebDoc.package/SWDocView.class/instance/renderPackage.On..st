render-package
renderPackage: aPackageInfo On:html
	"Render all classes of specified PackageInfo with their comments"
	
	self renderPackage: aPackageInfo On:html IfNotInCache: [
		html div id: 'package'; with:[
			html heading level:1; with: aPackageInfo packageName.
			html div id: 'links'; with:[
    			self renderUMLForPackage: aPackageInfo On: html.
				self renderPharoSearchForPackage: aPackageInfo On: html.
			].
		   html script: 'externalLinks()'.
			html unorderedList with: [
				(aPackageInfo classes) do: [:aClass| self renderClassSummary: aClass On: html].
			].
			(aPackageInfo classes) do: [:aClass| self renderClass: aClass On: html]
		]
	]..