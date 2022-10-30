tool
allReferencedOop

	| referencedOop |
	referencedOop := Set new.
	
	referencedOop add: self oopMethod.
	referencedOop add: self oopContext.
	referencedOop add: self oopReceiver.
	referencedOop addAll: operandStack.
	
	^referencedOop 
	