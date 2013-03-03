rendering
renderPackageSelectOn: html
	"Render a form to select package to show"
	
	html unorderedList with:[
		self allPackageNames do: [:aPackageName|
			html listItem with: [
				html anchor 
					url: aPackageName;
					with: aPackageName
			]
		]
	].
