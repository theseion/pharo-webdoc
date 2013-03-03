rendering
addPackageUrl: aPackageName to: root
	| url location changeFreq |
	url :=  XMLElement named: 'url'.
	root addElement: url.
	
   location := XMLElement named: 'loc'.
	
	url addElement: (location).
   	location addContent: (XMLString string: 'http://magaloma.seasidehosting.st/seaside/', aPackageName).