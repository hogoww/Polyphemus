running
setUp
	| resource |
	resource := PharoImageResource current.
	reifiedMemory := resource reifiedMemory.
	interpreter := resource interpreter.
	memory := resource memory.
	wordSize := resource wordSize.
	
	methodBuilder := VMCompiledCodeBuilder new
		interpreter: interpreter; 
		memory: memory;
		yourself.

	stackBuilder := VMStackBuilder new
		interpreter: interpreter; 
		memory: memory;
		methodBuilder: methodBuilder;
		yourself.