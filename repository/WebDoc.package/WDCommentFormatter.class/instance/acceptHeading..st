visiting
acceptHeading: aPPMarkdownHeading 
	html heading
		level: aPPMarkdownHeading level + 2;
		with: [ self visitNode: aPPMarkdownHeading title]