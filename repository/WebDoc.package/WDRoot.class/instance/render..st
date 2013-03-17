rendering
render: aView
	^ WAHtmlCanvas builder 
		documentClass: WAHtmlDocument;
		fullDocument: true;
		rootBlock: [ :root| aView updateRoot: root ];
		render: aView