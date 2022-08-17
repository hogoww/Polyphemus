initialization
pathTo64BitImage
	"In the CI setup, we cannot rely on Iceberg features.
	FileSystem workingDirectory is /*only*/ for the CI path"
	| package |
	package := IceRepository registeredRepositoryIncludingPackage: self class package.
	^ ((package 
		ifNotNil: [ package location ]
		ifNil: [ FileSystem workingDirectory ])  / 'resources' / self imageName) pathString