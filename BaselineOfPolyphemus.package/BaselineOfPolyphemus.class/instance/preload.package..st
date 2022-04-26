baselines
preload: loader package: packageSpec
	(FileSystem workingDirectory) asFileReference exists ifFalse: [ self error ].
	(FileSystem workingDirectory / 'pharo-local') asFileReference exists ifFalse: [ self error ].
	(FileSystem workingDirectory / 'pharo-local' / 'iceberg') asFileReference exists ifFalse: [ self error ].
	(FileSystem workingDirectory / 'pharo-local' / 'iceberg' / 'hogoww') asFileReference exists ifFalse: [ self error ].
	(FileSystem workingDirectory / 'pharo-local' / 'iceberg' / 'hogoww' / 'Polyphemus') asFileReference exists ifFalse: [ self error ].
	"[ 'VMMaker' asPackage ] on: NotFound do: [

		Metacello new
		  baseline: 'VMMaker';
		  repository: 'github://pharo-project/OpenSmalltalk-VM:pharoX/src';
		  onConflictUseIncoming;
		  onWarningLog;
		  load.
	]"