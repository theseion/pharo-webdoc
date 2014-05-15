rendering
renderClassDefinition: class on: html
	html definitionList
		class: 'box';
		with: [
			html definitionTerm 
				with: 'Subclass of: '.
			self renderInheritListOn: html ].
	html break.
	self flag: #todo. "Package diagram is not working"
	"
	html text: 'View '.
	html anchor
       url: (WDYumlMe new setDirectionLeftRight; inheritanceDiagramForClass: class);
		relationship: 'external';
		with: 'inheritance diagram'.

	html text: ' or '.
	html anchor
       url: (WDYumlMe new setDirectionLeftRight; packageDiagramForClass: class);
		relationship: 'external';
		with: 'package diagram'."