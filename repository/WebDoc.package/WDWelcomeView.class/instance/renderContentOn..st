rendering
renderContentOn: html
	html heading
		level1;
		class: 'className';
		with: 'Pharo ', SystemVersion current dottedMajorMinor, ' Documentation'. 
		
	html heading
		level2;
		class: 'className';
		with: 'Version ', SystemVersion current highestUpdate asString. 
		