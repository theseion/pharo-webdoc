Usage: webdoc [--export=<Path>|--server=<Port>] [<packageName> ...]
	--export=<Path>   export the speciefied list of <packageName> to <Path>
	--server=<Port>   run a documentation webserver on http://localhost:<Port>/doc/
	<Path>            path to export the documentation to
	<Port>            port number for the local documentation server
	<packageName>     A regex expression matching package names,
	                  if omitted all packages are selected	

Examples:
	pharo ./Pharo.image webdoc --export=doc/kernel "Kernel-.*"
	pharo ./Pharo.image webdoc --server=8080 "WebDoc.*" "Zinc.*"