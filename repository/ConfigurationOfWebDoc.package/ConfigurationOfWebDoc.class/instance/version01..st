versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'First release
added some missing methods in SimpleWebDoc'.
		spec author: 'CamilloBruni'.
		spec timestamp: '1/27/2012 18:00'.
		spec 
			package: 'WebDoc' with: 'WebDoc-CamilloBruni.71';
			package: 'SimpleWebDoc' with: 'SimpleWebDoc-CamilloBruni.31'. ].
