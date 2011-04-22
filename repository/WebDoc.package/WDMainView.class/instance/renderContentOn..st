as yet unclassified
renderContentOn: html
	self flag: 'split into submethods'.
	html div
		id: 'sidebar';
		with: [
			html div 
				id: 'packages';
				with: [
					html div 
						id: 'packagesIframe';
						with: [
							html iframe	
								name: 'list';
								id: 'list';
								url: '/doc/package'].
							
					html div
						id: 'vdragbar'.].
			html div 
				id: 'classes';
				with: [
					html iframe	
						name: 'list2';
						id: 'list2';
						url: '/doc/package/Kernel'].
			html div
				id: 'dragbar'].
				
	html div
		id: 'main';
		with: [
			html iframe
				name: 'classView';
				url: classViewUrl;
				width: '100%';
				height: '100%'.
		]