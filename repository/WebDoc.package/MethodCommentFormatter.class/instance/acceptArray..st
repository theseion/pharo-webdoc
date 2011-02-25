visiting
acceptArray: anArray
	anArray do: [ :each| each visit: self ].