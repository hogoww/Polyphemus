inspection
inspectionItems
| items |
	[ ^super inspectionItems ] onErrorDo: [ 
	
	items := {
		#sender -> sender.
		#pc -> pc. 
		#stackp -> stackp.
		#method -> method.
		#caller -> caller.
		#closuerOrNil -> closureOrNil.
		#receiver -> receiver.
		} asOrderedCollection .

	^ items ]