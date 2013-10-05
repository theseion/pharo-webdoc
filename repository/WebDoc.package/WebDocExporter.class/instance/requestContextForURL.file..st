private
requestContextForURL: aURL file: file
	"We model our custom request context to bypass using a local server to render the seaside contents."
	| uri |
	
	uri := (WAUrl absolute: aURL uri) decodedWith: self codec.
	^ WARequestContext
		request: (WARequest method: 'GET' uri: uri)
		response: (WAStreamedResponse on: file writeStream)
		codec: self codec