rendering
renderSelector:  selector named: name in: class on: html
	html anchor
		class: 'object_link';
		class: 'method_link';
		class: 'stSelector';
		target: 'classView';
		url: '/doc/class/', class theNonMetaClass name, '#', (class isMeta ifTrue: [ 'class/'] ifFalse: ['']), 'method/', selector;
		with: name.