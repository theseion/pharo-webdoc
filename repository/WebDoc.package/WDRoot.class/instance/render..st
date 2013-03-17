rendering
render: aView
	^ WAHtmlCanvas builder 
      documentClass: WAHtmlDocument;
      render: aView