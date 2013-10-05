rendering
renderMethodsDetailsSectionFor: class title: title htmlClass: htmlClass on: html
	| methodView |
	
	class selectors ifEmpty: [ ^ self ].
	
	methodView := WDMethodView new.
	methodView 
		environment: self environment;
		rootURL: rootURL;
		showClassLinks: false;
		viewClass: self selectedClass.
	html div
		class: htmlClass;
		class: 'methodDetail';
		with: [
			self renderSectionTitle: title on: html.
			(self selectorsForClass: class ) do: [ :selector|
				(methodView  method: (class >> selector)) renderOn: html ]].