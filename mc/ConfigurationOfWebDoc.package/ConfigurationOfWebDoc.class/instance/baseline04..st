baselines
baseline04: spec 
	<version: '0.4-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'github://estebanlm/pharo-webdoc/mc'.
		
		spec project: 'Petit Markdown' with: [
			spec
				className: 'ConfigurationOfPetitMarkdown';
				version: #'development';
				repository: 'github://estebanlm/petitmarkdown/mc' ].
			
		spec project: 'Seaside3' with: [
			spec
				repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
				className: 'ConfigurationOfSeaside3';
				loads: #('default' 'REST');
				version: #'stable' ].
			
		spec 
			package: 'WebDoc' with: [
				spec requires: #('Petit Markdown' 'Seaside3' "'Seaside-REST'") ]]
