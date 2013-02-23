routes
package: aPackageName
	<get>
	<path: '/package/{aPackageName}'>
	activeView := self packageClassView.
	activeView packageName: aPackageName asSymbol