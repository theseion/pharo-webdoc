I am an more abstract class for encapsulating search results done by the WDSearch.
My subclasses implement specific behavior for the different kind of search results, such as classes, methods or packages.
To do so, my sublclasses override methods to gather the results and to display them, see the #abstract protocol.

Instance Variables:
	searchTerm		<String>
	searchRegexp	<RxMatcher>
	searchResults	<Collection>
	resultLimit	<Integer>