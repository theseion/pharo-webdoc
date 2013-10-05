exporting
exportAll
	
	self 
		exportURL: self urlForClass;
		exportURL: 'index.html';
		exportURL: 'welcome.html';
		exportURL: 'version.txt';
		exportURL: 'license.txt'.
		
	self fileLibrary 
		exportAllTo: self destination.
	
	self
		exportAllSymbols;
		exportAllPackages;
		exportAllClasses.