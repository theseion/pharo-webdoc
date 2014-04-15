render-package
renderUMLForPackage: aPackageInfo On: html
	html anchor
       url: (SWYumlMe new setDirectionLeftRight; scale:75; inheritanceDiagramForPackage: aPackageInfo);
		relationship: 'external';
		with: 'View inheritance diagram'.
