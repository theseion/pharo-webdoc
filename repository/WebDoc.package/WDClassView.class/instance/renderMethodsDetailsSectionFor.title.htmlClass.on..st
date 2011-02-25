rendering
renderMethodsDetailsSectionFor: class title: title htmlClass: htmlClass on: html
.
	html div
		class: htmlClass;
		with: [
			self renderSectionTitle: title on: html.
			class selectors asArray sort do: [ :selector|
				html render: (WDMethodView for: (class methodDict at: selector))]].