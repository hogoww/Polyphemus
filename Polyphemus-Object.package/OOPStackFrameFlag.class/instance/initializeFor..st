initialization
initializeFor: anOOPBaseFrame

	| stackpages flagAddress |
	memory := anOOPBaseFrame memory.
	stackpages := memory interpreter stackPages.
	flagAddress := anOOPBaseFrame framePointer - (3 * memory wordSize).
	tag :=  stackpages longAt: flagAddress.
		
	numArgs := stackpages byteAt: flagAddress + 1.
	hasContext := (stackpages byteAt: flagAddress + 2) ~= 0.
	isBlockActivation := (stackpages byteAt: flagAddress + 3) ~= 0.