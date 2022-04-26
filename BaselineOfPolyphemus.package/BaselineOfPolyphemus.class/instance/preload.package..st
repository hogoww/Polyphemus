baselines
preload: loader package: packageSpec
	
"	[ 'VMMaker' asPackage ] on: NotFound do: [

		Metacello new
		  baseline: 'VMMaker';
		  repository: 'github://pharo-project/OpenSmalltalk-VM:pharoX/src';
		  onConflictUseIncoming;
		  onWarningLog;
		  load.
	]."