rendering
renderSelectorLink: method in: class on: html
	html anchor
		class: 'object_link';
		class: 'method_link';
		url: class theNonMetaClass name, '#', (class isMeta ifTrue: [ 'class/'] ifFalse: ['']), method selector;
		with: method selector.