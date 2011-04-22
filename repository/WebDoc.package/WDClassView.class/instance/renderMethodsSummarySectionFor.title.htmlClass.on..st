rendering
renderMethodsSummarySectionFor: class title: title htmlClass: htmlClass on: html
	| selectors |
	selectors := class selectors sort.
	html div
		class: htmlClass;
		class: 'methodSummary';
		style: ((selectors size > 10) 
				ifTrue: [ 'style: hidden'] 
				ifFalse: ['']);
		with: [
			self renderSectionTitle: title on: html.
			html unorderedList
				class: 'summary';
				class: 'compact';
				with: [ self renderMethodSummaryFor: selectors in: class on: html ].
			class allSuperclasses do: [ :each |
				self renderInheritedInstanceMethodsFrom: each on: html ]]