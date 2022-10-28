as yet unclassified
allReferencedOop

	| referencedOop |
	referencedOop := Set new.
	
	stackFrames do: [:frame | referencedOop addAll: frame allReferencedOop].
	^referencedOop 