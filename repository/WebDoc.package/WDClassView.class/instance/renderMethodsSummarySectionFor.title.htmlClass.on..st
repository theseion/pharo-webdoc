rendering
renderMethodsSummarySectionFor: class title: title htmlClass: htmlClass on: html
	| selectors |
	selectors := class selectors sort.
	html div
		class: htmlClass;
		class: 'methodSummary';
		style: 'style: hidden';
		with: [
			self renderSectionTitle: title on: html.
			html unorderedList
				class: 'summary';
				class: 'compact';
				with: [ self renderMethodSummaryFor: selectors in: class on: html ].
			(self reducedSuperClassesOf: class) do: [ :each |
				self renderInheritedMethodsFrom: each on: html ]]