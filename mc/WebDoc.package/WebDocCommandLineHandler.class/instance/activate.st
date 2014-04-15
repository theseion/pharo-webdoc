actions
activate
	self activateHelp
		ifTrue: [  ^ self ].
	
	(self hasOption: 'export')
		ifTrue: [ ^ self export ].
	
	(self hasOption: 'server')
		ifTrue: [ ^ self server ].
		
	self exitFailure: 'Either --server=<Port> or --export=<Path> have to be specified.'