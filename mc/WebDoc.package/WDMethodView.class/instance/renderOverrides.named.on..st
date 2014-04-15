rendering
renderOverrides: classes named: name on: html

	html heading level3 with:[
		html text: name.
		html unorderedList 
			class: 'override';
			with: [
				classes do: [:superclass| 
					html listItem class: 'override_item'; with: [
						self renderSelector:  selector named: superclass name in: superclass on: html.
						"self renderSelectorLink: (superclass methodDict at: selector) class: superclass on: html" ]]]]