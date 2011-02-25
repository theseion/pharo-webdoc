rendering
renderMethodsSummarySectionFor: class title: title htmlClass: htmlClass on: html
	| superclasses |
.
	html div
		class: htmlClass;
		with: [
			self renderSectionTitle: title on: html.
			html unorderedList
				class: 'summary';
				class: 'compact';
				with: [ self renderMethodSummaryFor: class selectors sort in: class on: html ].
			superclasses := class allSuperclasses allButLast: 2. "ignore Object and ProtoObject"
			superclasses do: [ :each |
				self renderInheritedInstanceMethodsFrom: each on: html ] ]