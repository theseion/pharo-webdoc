exporting
exportAllTo: aFileReference
	
	self 
		exportURL: self urlForClass  to: aFileReference;
		exportURL: self rootURL, '/index.html'  to: aFileReference;
		exportURL: self rootURL, '/welcome.html'  to: aFileReference;
		exportURL: self rootURL, '/version.txt'  to: aFileReference;
		exportURL: self rootURL, '/license.txt'  to: aFileReference.
		
	self fileLibrary exportAllTo: aFileReference.
	
	self 
		exportAllPackagesTo: aFileReference;
		exportAllClassesTo: aFileReference.