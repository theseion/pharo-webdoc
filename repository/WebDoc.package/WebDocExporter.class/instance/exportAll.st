exporting
exportAll
	
	self fileLibrary 
		exportAllTo: self destination.
		
	self 
		exportURL: 'index.html';
		exportURL: 'welcome.html';
		exportURL: 'version.txt';
		exportURL: 'license.txt';
		exportURL: self urlForClass.
		
	self
		exportAllPackages;
		exportAllClasses;
		exportAllSymbols.