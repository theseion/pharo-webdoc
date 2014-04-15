private
requestContextForURL: aURL
	"We model our custom request context to bypass using a local server to render the seaside contents."
	| uri |
	
	uri := (WAUrl absolute: aURL) decodedWith: self codec.
	^ WARequestContext
		request: (WARequest method: 'GET' uri: uri)
		response: (WABufferedResponse new)
		codec: self codec