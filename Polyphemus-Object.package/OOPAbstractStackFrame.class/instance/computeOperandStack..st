update
computeOperandStack: limit

	| address stackpages wordSize |
	operandStack := OrderedCollection new.
	address := self offsetForOperandStack.
	stackpages := memory interpreter stackPages.
	wordSize := memory wordSize.

	[ address > limit ] 
		whileTrue: [ 
			operandStack add: (memory objectAt:
					 (stackpages longAt: address)).
			address := address - wordSize].