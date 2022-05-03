instance creation
newOn: anInterpreter forSpaceClass: aSpacePresenterClass
	^ self basicNew 
		interpreter: anInterpreter;
		spacePresenterClass: aSpacePresenterClass;
		initialize;
		yourself