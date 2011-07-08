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
								name: 'packageList';
								id: 'packageList';
								url: rootURL,'/package'].
							
					html div
						id: 'vdragbar'.].
			html div 
				id: 'classes';
				with: [
					html iframe	
						name: 'classList';
						id: 'classList';
						url: rootURL,'/package/Kernel'].
			html div
				id: 'dragbar'].
				
	html div
		id: 'main';
		with: [
			html iframe
				name: 'classView';
				id: 'classView';
				url: classViewUrl;
				width: '100%';
				height: '100%'.
		]