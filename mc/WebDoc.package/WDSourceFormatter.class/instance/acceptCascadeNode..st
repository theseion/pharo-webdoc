visitor-double dispatching
acceptCascadeNode: aCascadeNode 
	| messages |
	messages := aCascadeNode messages.
	
	self visitNode: messages first receiver.
	html space.
	
	self indent: [
		 messages 
			do: [:each | 
				self formatMessage: each cascade: true]
			separatedBy: [ html text: ';'. self break].
		self dot: aCascadeNode]