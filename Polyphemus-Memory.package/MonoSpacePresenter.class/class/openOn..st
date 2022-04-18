instance-creation
openOn: anInterpreter

	^ self basicNew
		  interpreter: anInterpreter;
		  initialize;
		  open