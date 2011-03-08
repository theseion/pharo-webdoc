rendering
renderSelector:  selector named: name in: class on: html
	html anchor
		class: 'object_link';
		class: 'method_link';
		class: 'stSelector';
		url: '/doc/class/', class theNonMetaClass name, '#', (class isMeta ifTrue: [ 'class/'] ifFalse: ['']), selector;
		with: name.