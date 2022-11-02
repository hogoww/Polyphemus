as yet unclassified
allReceiver

	| referencedOop |
	referencedOop := Set new.
	
	stackFrames do: [:frame | referencedOop add: frame oopReceiver].
	^referencedOop 