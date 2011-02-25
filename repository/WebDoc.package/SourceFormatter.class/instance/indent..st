as yet unclassified
indent: aBlock
	self useBreaks 
		ifFalse: [ ^ html span with: aBlock].
	^ html div
			class: 'stIndent';
			with: aBlock.