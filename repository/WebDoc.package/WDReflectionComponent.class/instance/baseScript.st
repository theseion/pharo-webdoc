accessing
baseScript
	| requestURL |
	requestURL := self requestContext request url.
	^ String streamContents: [ :s | 
		s
			crlf;
			nextPutAll: 'document.WEBDOC_RELATIVE_DOCUMENT_ROOT ="';
			print: (self rootURL seasideUrl asRelativeURLTo: requestURL);
			nextPutAll: '";';
			crlf;
			nextPutAll: 'document.WEBDOC_PHARO_VERSION ="';
			print: SystemVersion current dottedMajorMinor;
			nextPutAll: '";';
			crlf ]