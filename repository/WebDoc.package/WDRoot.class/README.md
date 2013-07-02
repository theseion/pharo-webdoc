I am the root component responsible for dispatching over the different subviews.


Usage: 

	ZnZincServerAdaptor startOn: 8088.
	[ WDRoot allInstances first exportAll ] fork.

Instance Variables:
	classView			<WDClassView>
	methodView			<WDMethodView>
	packageTree		<WDPackageTree>
	selectorList		<WDSelectorList>
	routes				<WAByMethodRoutes>
	activeView			<WDAbstractView>
	mainView			<WDMainView>
	selectorView		<WAComponent>
	packageClassView	<WAComponent>
	methodPopup		<WDMethodPopup>
	selectorPopup		<WDSelectorPopup>
	classPopup			<WDClassPopup>