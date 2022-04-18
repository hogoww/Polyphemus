instance creation
newOn: anInterpreter

	^ self basicNew
		  interpreter: anInterpreter;
		  initialize