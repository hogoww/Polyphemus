baselines
preload: loader package: packageSpec
	(FileSystem workingDirectory) asFileReference exists ifFalse: [ self error: 'filesystem' ].
	self error: ( String streamContents: [:s |(FileSystem workingDirectory) directories printOn: s]).
	(FileSystem workingDirectory / 'pharo-local') asFileReference exists ifFalse: [ self error: 'PharoLocal' ].
	(FileSystem workingDirectory / 'pharo-local' / 'iceberg') asFileReference exists ifFalse: [ self error: 'iceberg' ].
	(FileSystem workingDirectory / 'pharo-local' / 'iceberg' / 'hogoww') asFileReference exists ifFalse: [ self error: 'hogoww' ].
	(FileSystem workingDirectory / 'pharo-local' / 'iceberg' / 'hogoww' / 'Polyphemus') asFileReference exists ifFalse: [ self error: 'poly' ].
	"[ 'VMMaker' asPackage ] on: NotFound do: [

		Metacello new
		  baseline: 'VMMaker';
		  repository: 'github://pharo-project/OpenSmalltalk-VM:pharoX/src';
		  onConflictUseIncoming;
		  onWarningLog;
		  load.
	]"