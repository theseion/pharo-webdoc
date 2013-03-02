accessing
rootURL: anURL
	self haltIf: anURL ~= '/webdoc/doc'.
	rootURL := anURL