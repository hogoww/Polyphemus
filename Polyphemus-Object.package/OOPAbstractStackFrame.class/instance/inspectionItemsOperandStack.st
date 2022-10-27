inspection
inspectionItemsOperandStack

	| operands |
	operands := OrderedCollection new.
	operandStack doWithIndex: [ :operand :anIndex | 
		operands add: 'Operand ' , anIndex printString -> operand ].
	^ operands