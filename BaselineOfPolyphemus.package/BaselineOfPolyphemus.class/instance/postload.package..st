baselines
postload: loader package: packageSpec

	"explicit register in IceRegistry.
	It's not done by the CI, apparently"
	
	| repository |
	repository := IceRepositoryCreator new
		location: FileSystem workingDirectory ;
		createRepository.
	repository register.
	

	[ IceRepository registeredRepositoryIncludingPackage: [ self class package ] ] on: NotFound do: [

		Metacello new
		  baseline: 'Polyphemus';
		  repository: 'tonel://' , FileSystem workingDirectory;
		  onConflictUseIncoming;
		  onWarningLog;
		  load.
	].
	IceRepository registeredRepositoryIncludingPackage: [ self class package ]