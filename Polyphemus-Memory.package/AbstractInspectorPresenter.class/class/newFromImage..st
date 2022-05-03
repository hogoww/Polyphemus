instance-creation
newFromImage: anImagePath
	^ self basicNew
		createInterpreterFrom: anImagePath;
		initialize;
		yourself