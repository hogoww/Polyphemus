baselines
preload: loader package: packageSpec
	
	[ 'VMMaker' asPackage ] on: NotFound do: [

		Metacello new
		  baseline: 'VMMaker';
		  repository: 'github://pharo-project/OpenSmalltalk-VM:pharoX/src';
		  onConflictUseIncoming;
		  onWarningLog;
		  load.
		
	"We rely on iceberg's repository, it needs to be registered"
	(IceRepositoryCreator new
		location: (FileSystem workingDirectory / 'pharo-local' / 'iceberg' / 'pharo-project' / 'OpenSmalltalk-VM') asFileReference;
		createRepository) register.
	"Force handle creation, to be able to start directly"
	(IceRepository repositories detect: [ :r | r name = 'ovm' ]) repositoryHandle.
	]