as yet unclassified
rootURL: anURL
	self haltIf: anURL ~= '/webdoc/doc'.
	rootURL := anURL