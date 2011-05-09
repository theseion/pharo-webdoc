as yet unclassified
commit: json
	| entity response|
	entity := ZnEntity with: json type: ZnMimeType applicationJson. 
	response := ZnClient post: 'http://localhost:8983/solr/update/json', 
									(json isNil ifTrue: ['?commit=true'] ifFalse: ['']) 
							data: entity.
	response isSuccess
		ifFalse: [ self halt. response ]