baselines
baseline01: spec 
	<version: '0.1-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://ss3.gemstone.com/ss/petitmarkdown'.
		
		spec project: 'PetitMarkdown' with: [
			spec
				className: 'ConfigurationOfPetitMarkdown';
				version: #'development';
				repository: 'http://ss3.gemstone.com/ss/petitmarkdown' ].
			
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
		 	package: 'SimpleWebDoc' with: [ 
				spec repository: 'http://www.squeaksource.com/SimpleWebDoc'];
			package: 'WebDoc' with: [
				spec requires: #('PetitMarkdown' 'Seaside30' 'Seaside-REST') ]]
