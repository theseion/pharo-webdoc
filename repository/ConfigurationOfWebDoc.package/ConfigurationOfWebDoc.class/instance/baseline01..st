baselines
baseline01: spec 
	<version: '0.1-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/dh83/webdoc/main/'.
		
		spec project: 'Petit Markdown' with: [
			spec
				className: 'ConfigurationOfPetitMarkdown';
				version: #'development';
				repository: 'http://smalltalkhub.com/mc/dh83/petitmarkdown/main/' ].
			
		spec project: 'Seaside3' with: [
			spec
				repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
				className: 'ConfigurationOfSeaside3';
				version: #'stable' ].
			
		spec project: 'Seaside-REST' with: [
			spec
				repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
				className: 'ConfigurationOfSeasideRest';
				version: #'stable' ].
			
		spec 
		 	package: 'SimpleWebDoc' with: [ 
				spec repository: 'http://www.squeaksource.com/SimpleWebDoc'];
			package: 'WebDoc' with: [
				spec requires: #('Petit Markdown' 'Seaside3' 'Seaside-REST') ]]
