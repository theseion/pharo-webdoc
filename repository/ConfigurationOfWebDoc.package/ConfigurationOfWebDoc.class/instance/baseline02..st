baselines
baseline02: spec 
	<version: '0.2-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/dh83/webdoc/main/'.
		
		spec project: 'Petit Markdown' with: [
			spec
				className: 'ConfigurationOfPetitMarkdown';
				version: #'development';
				repository: 'http://smalltalkhub.com/mc/dh83/petitmarkdown/main/' ].
			
		spec project: 'Seaside30' with: [
			spec
				className: 'ConfigurationOfSeaside30';
				version: #'stable';
				repository: 'http://www.squeaksource.com/MetacelloRepository' ].
			
		spec project: 'Seaside-REST' with: [
			spec
				className: 'ConfigurationOfSeasideRest';
				version: #'stable';
				repository: 'http://www.squeaksource.com/MetacelloRepository' ].
			
		spec 
			package: 'WebDoc' with: [
				spec requires: #('Petit Markdown' 'Seaside30' 'Seaside-REST') ]]
