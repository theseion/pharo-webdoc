rendering
renderContentOn: html
	html anchor 
		name: (self method methodClass isMeta ifTrue: ['class/'] ifFalse:['']), self method selector.
	html  div
		class: contentSyleClass;
		with: [
			self renderSignatureOn: html.
			self renderCommentOn: html.
			self renderTagsOn: html.
			self renderSourceOn: html].
		.
	"html anchor: class name, '>>#', method selector"