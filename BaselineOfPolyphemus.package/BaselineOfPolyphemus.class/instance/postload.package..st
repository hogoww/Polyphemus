baselines
postload: loader package: packageSpec

	"explicit register in IceRegistry.
	It's not done by the CI, apparently"
	
	| repository |
	"repository := IceRepositoryCreator new
		location: FileSystem workingDirectory ;
		createRepository.
	repository register."