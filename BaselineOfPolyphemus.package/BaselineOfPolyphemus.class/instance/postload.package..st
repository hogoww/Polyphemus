baselines
postload: loader package: packageSpec

	"explicit register in IceRegistry.
	It's not done by the CI, apparently"
	
	| repository |
	(FileSystem workingDirectory / 'pharo-local' / 'iceberg' / 'hogoww' / 'Polyphemus') asFileReference exists ifFalse: [ self error ].
	repository := IceRepositoryCreator new
		location: (FileSystem workingDirectory / 'pharo-local' / 'iceberg' / 'hogoww' / 'Polyphemus') asFileReference ;
		createRepository.
	repository register.