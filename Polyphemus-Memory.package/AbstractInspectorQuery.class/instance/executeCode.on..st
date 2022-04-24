executing
executeCode: someCode on: aMemoryPresenter
	aMemoryPresenter updateScalingTo: 
		(OpalCompiler new
			source: someCode;
			noPattern: true;
			evaluate).