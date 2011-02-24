as yet unclassified
renderInstanceMethodsSummaryFor: class on: html| superclasses |
.
	html div
		class: 'instanceMethodSummary';
		with: [
			self renderSectionTitle: 'Instance Method Summary' on: html.
			html unorderedList
				class: 'summary';
				with: [self renderMethodSummaryFor: class selectors sort in: class on: html].
			superclasses := class allSuperclasses.
			1 to: superclasses size - 2 do: [ :index|
				self renderInheritedInstanceMethodsFrom: (superclasses at: index) on: html].].