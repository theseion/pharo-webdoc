rendering
renderClassLink: class on: html
	html anchor
		class: 'object_link';
		class: (class isTrait ifTrue: ['trait_link'] ifFalse: ['class_link']);
		callback: [ self selectClass: class];
		title: class name, ' (class)';
		with: class name.