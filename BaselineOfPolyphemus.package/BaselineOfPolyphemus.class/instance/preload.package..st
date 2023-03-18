baselines
preload: loader package: packageSpec

	[ 'VMMaker' asPackage ] on: NotFound do: [ ^ self ].

	Metacello new
	  baseline: 'OpenSmalltalk-VM';
	  repository: 'github://Pharo-project/Pharo-VM:smalltalksrc';
	  onConflictUseIncoming;
	  onWarningLog;
	  load