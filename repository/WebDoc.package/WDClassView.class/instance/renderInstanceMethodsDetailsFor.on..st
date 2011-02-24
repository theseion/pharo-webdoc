as yet unclassified
renderInstanceMethodsDetailsFor: class on: html
.
	html div
		class: 'instanceMethodDetail';
		with: [
			self renderSectionTitle: 'Instance Method Details' on: html.
			class selectors asArray sort do: [ :selector|
				html render: (WDMethodView for: (class methodDict at: selector))]].