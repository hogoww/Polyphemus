baselines
preload: loader package: packageSpec
	
	[ 'VMMaker' asPackage ] on: NotFound do: [
	
		Metacello new
		  baseline: 'OpenSmalltalk-VM';
		  repository: 'github://hogoww/OpenSmalltalk-VM:hogoww/src';
		  onConflictUseIncoming;
		  onWarningLog;
		  load.
	]