running
setupUsingImage
	"/!\ Only runnable with a wordsize equals to your image's (needs disabling parametizing of wordsize) /!\"
	
	"This is an alternate setUp using an image to correctly initialize memory/interpreter.
	Currently not used by default, as some tests still fails, but is usable.
	For example, we could test that all test are working on both a specific setup, and image load one.
	Or we could design tests using the image setUp, which should have everything ready to use, and do the specific on after, to refine the requirements of a setUp for a test."
	interpreter := self newInterpreter 
		pluginList: { }.
	
	interpreter openOn: self pathTo64BitImage.
	interpreter initStackPages.
	interpreter loadInitialContext.
	wordSize := memory wordSize.
	
	objectHeaderSize := 8 "bytes. Always.".
	emptyObjectSize := objectHeaderSize + 8 "minimum required single empty slot, to use for forwarders".
	
	newSpaceSize := memory newSpaceLimit - memory newSpaceStart.
	oldSpaceSize := memory oldSpaceSize.
	
	methodBuilder := VMCompiledCodeBuilder new
		interpreter: interpreter; 
		memory: memory;
		yourself.

	stackBuilder := VMStackBuilder new
		interpreter: interpreter; 
		memory: memory;
		methodBuilder: methodBuilder;
		yourself.
		