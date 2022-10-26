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
		
	"Hack to test"
	self isTopFrame ifFalse: [  
	operandStack remove: operandStack last.
	savedIP := stackpages longAt: address] 