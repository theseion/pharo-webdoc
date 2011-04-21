rendering
renderMethodsDetailsSectionFor: class title: title htmlClass: htmlClass on: html
	html div
		class: htmlClass;
		class: 'methodDetail';
		with: [
			self renderSectionTitle: title on: html.
			class selectors asArray sort do: [ :selector|
				html render: (WDMethodView  listMethod: (class methodDict at: selector) class: self selectedClass)]].