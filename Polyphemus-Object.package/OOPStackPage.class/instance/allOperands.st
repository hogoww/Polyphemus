as yet unclassified
allOperands

	| referencedOop |
	referencedOop := Set new.
	
	stackFrames do: [:frame | referencedOop addAll: frame operands].
	^referencedOop 