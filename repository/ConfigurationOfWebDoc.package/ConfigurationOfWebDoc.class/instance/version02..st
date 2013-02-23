versions
version02: spec
	<version: '0.2' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'Working on a version for 1.4'.
		spec author: 'CamilloBruni'.
		spec timestamp: '2/24/2013 00:57'.
		spec 
			package: 'WebDoc' with: 'WebDoc-CamilloBruni.73';
			package: 'SimpleWebDoc' with: 'SimpleWebDoc-CamilloBruni.31'. ].
