rendering
renderClassLink: class on: html
	html anchor
		class: 'object_link';
		class: 'class_link';
		url: (self urlForClass: class theNonMetaClass); 
		target: 'classView';
		title: class name, ' (class)';
		with: class name.