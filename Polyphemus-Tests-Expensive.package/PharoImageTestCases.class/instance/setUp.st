running
setUp
	PharoImageResource current setUpTestCase: self.
	
	methodBuilder := VMCompiledCodeBuilder new
		interpreter: interpreter; 
		memory: memory;
		yourself.

	stackBuilder := VMStackBuilder new
		interpreter: interpreter; 
		memory: memory;
		methodBuilder: methodBuilder;
		yourself.