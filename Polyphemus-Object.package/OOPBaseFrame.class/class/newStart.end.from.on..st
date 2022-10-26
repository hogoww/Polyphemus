instance creation
newStart: start end: end from: aCogStackPage on: aPreReifiedMemory 

		| instance |
	instance := self new.
	instance
		framePointer: start;
		memory: aPreReifiedMemory;
		computeFields ;
		computeOperandStack: end. 
	^ instance