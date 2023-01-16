querying
allReferencedOop

	| referencedOop |
	referencedOop := Set new.

	stackpages do: [ :page | referencedOop addAll: page allReferencedOop ].

	^ referencedOop