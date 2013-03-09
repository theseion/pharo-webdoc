as yet unclassified
renderContentOn: html
	html heading
		level2;
		with: [
			self message
				ifNil: [ 'Document not Found' ]
				ifNotNil: [ :msg| msg ]].
