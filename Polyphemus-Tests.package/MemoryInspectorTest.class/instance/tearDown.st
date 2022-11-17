running
tearDown
	
	inspector ifNotNil: [ inspector owner close ].
	ReifiedMemoryScripter lastCode: cachedCode.
	super tearDown