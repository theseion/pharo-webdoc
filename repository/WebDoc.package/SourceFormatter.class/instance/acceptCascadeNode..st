as yet unclassified
acceptCascadeNode: aCascadeNode 
	| messages |
	messages := aCascadeNode messages.
	self visitNode: messages first receiver.
	self indent: [
		 messages 
			do: [:each | 
				self formatMessage: each cascade: true]
			separatedBy: [html text: $;]]