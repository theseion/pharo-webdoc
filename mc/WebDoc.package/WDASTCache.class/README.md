I am a cache for the AST of CompiledMethod.
if you run `(Object >> #class) ast` the AST will be cached and the following calls are much faster as no more parsing is required.


Class Instance Variables:
	default	<WDASTCache>