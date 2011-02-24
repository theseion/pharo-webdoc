rendering
renderClassLink: class on: html
	html anchor
		class: (class isTrait ifTrue: ['trait_link'] ifFalse: ['class_link']);
		callback: [ self selectClass: class];
		with: class name.