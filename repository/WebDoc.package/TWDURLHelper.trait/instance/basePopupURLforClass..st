t-url
basePopupURLforClass: aClass
	^  self popupURL, (self urlSuffixForClass: aClass)