exporting
exportAll
	
	self 
		exportURL: self urlForClass;
		exportURL: self rootURL, '/index.html';
		exportURL: self rootURL, '/welcome.html';
		exportURL: self rootURL, '/version.txt';
		exportURL: self rootURL, '/license.txt'.
		
	self fileLibrary 
		exportAllTo: self destination.
	
	self
		exportAllSymbols;
		exportAllPackages;
		exportAllClasses.