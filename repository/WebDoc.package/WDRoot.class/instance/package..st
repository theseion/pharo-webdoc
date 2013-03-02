routes
package: aPackageName
	<get>
	<path: 'package/{aPackageName}.html'>
	activeView := self packageClassView.
	activeView packageName: aPackageName asSymbol