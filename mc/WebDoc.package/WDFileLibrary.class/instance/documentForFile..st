helper
documentForFile: aFilename
	^ (super documentForFile: aFilename) replaceAll: Character cr with: Character lf