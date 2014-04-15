accessing
destination
	"The filereference to which the documentation is exported to, by default './webdoc'"
	^ destination ifNil: [ 'webdoc' asFileReference ]