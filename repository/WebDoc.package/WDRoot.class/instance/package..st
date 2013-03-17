routes
package: aPackageName
	<get>
	<path: 'package/{aPackageName}.html'>
   <produces: 'text/html'>
	
	activeView := self packageClassView.
	activeView packageName: aPackageName asSymbol.
	^ self render: activeView.