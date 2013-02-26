routes
class: aClass viewClass: aViewClass selector: aSelector sourceOnly: showSourceOnly
	activeView := self methodView.
	activeView 
		selectClass: aClass;
		viewClass: aViewClass;
		selectMethodNamed: aSelector asSymbol;
		sourceOnly: showSourceOnly.