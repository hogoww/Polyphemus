reflective operations
becomeOppForward: anOOPClassInstanceSideObject 

	| references |
	references := self allReferencers.
	references do: [ :o | o replaceReferenceTo: self by: anOOPClassInstanceSideObject ]