as yet unclassified
allReceiver

	| referencedOop |
	referencedOop := Set new.
	
	stackFrames do: [:frame | referencedOop addAll: frame receiver].
	^referencedOop 