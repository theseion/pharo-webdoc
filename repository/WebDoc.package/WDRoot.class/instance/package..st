routes
package: aPackageName
	<GET>
	<Path: '/package/{aPackageName}'>
	activeView := self packageClassView.
	activeView packageName: aPackageName asSymbol