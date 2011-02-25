as yet unclassified
renderOn: aCanvasRenderer
	html := aCanvasRenderer.
	html withLineBreaks: comment.
	"markdown first second visit: self"