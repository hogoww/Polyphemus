running
tearDown
	
	inspector ifNotNil: [ inspector owner close ].
	super tearDown