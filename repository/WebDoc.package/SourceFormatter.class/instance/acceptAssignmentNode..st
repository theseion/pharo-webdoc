as yet unclassified
acceptAssignmentNode: anAssignmentNode
	html span
		class: 'stAssignment';
		with: [
			html span
				class: 'stAssignmentVariable';
				with: [self visitNode: anAssignmentNode variable].
			html space.
			html span
				class: 'stAssignmentOperator';
				with:  anAssignmentNode assignmentOperator.
			html space.
			html span
				class: 'stAssignmentExpression';
				with: [self visitNode: anAssignmentNode value].
			self dot: anAssignmentNode]