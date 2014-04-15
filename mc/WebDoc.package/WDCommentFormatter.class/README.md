I generate formatted HTML for method comments by parsing the comments as MarkDown.
Additionally I try to find class and selector names inside the comments and install proper links there.

I render myself by responding to the seaside method #renderOn:
You can instantiate me by using one of the two class-side methods.

Instance Variables:
	comment			<String>
	method				<CompiledMethod>
	html				<WAHtmlCanvas>
	ast					<RBProgramNode>
	rootURL			<String>
	wordSplitRegex	<RxMatcher>
	symbolRegex		<RxMatcher>