rendering
renderClassLink: class on: html
	html anchor
		class: 'object_link';
		class: 'class_link';
		"class: (class isTrait ifTrue: ['trait_link'] ifFalse: ['class_link']);"
		url: rootURL,'/class/', class theNonMetaClass name; 
		target: 'classView';
		title: class name, ' (class)';
		with: class name.