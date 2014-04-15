I visit the AST of a compiled method and produce formatted and annotated html output.

I apply very limited type inference to figure out which particular method is used in a message send.
I also apply limited source code formatting by using some hard-coded heuristics.

The outputed html code contains the full AST with different CSS classes for each AST node.
Formatting is done partially by CSS rules (in the WDLibrary) and some manually inserted newlines and indents.

Instance Variables:
	renderComment			<Boolean>
	method					<CompiledMethod>
	html					<WAHtmlCanvas>
	allClassVariables	<ProtoObject>
	tempNames				<(Collection of: String)>
	argumentNames			<(Collection of: String)>
	allClassVarNames		<(Collection of: String)>
	classVarNames			<(Collection of: String)>
	instVarNames			<(Collection of: String)>
	inLiteralArray		<Boolean>
	useBreaks				<Boolean>
	source					<String>
	rootURL				<String>
	ast						<RBMethodNode>

Class Instance Variables:
	implementors 			<(Dictionary of: Symbol to: (OrderedCollection of: CompedMethod))>