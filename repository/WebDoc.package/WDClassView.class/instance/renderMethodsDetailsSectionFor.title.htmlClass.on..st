rendering
renderMethodsDetailsSectionFor: class title: title htmlClass: htmlClass on: html
	| methodView |
	
	class selectors ifEmpty: [ ^ self ].
	
	methodView := WDMethodView new.
	methodView 
		rootURL: rootURL;
		showClassLinks: false;
		viewClass: self selectedClass.
	html div
		class: htmlClass;
		class: 'methodDetail';
		with: [
			self renderSectionTitle: title on: html.
			class selectors asArray sort do: [ :selector|
				html render: (methodView  method: (class methodDict at: selector))]].