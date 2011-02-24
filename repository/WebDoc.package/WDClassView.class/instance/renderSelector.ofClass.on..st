as yet unclassified
renderSelector: aSelector ofClass: aClass on: html
	"Render given selector"
	
	html listItem class:'selector'; with:[
		html anchor 
			class:'name'; 
			class:'class-side' if: (aClass class localSelectors includes:aSelector);
			callback: [ self selectMethod: (aClass methodDict at: aSelector)];
			with: aSelector.]