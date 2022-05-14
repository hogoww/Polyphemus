enumerating
allClassesOop
	| res |
	res := OrderedCollection new.
 	1 to: self numSlots do:[ :anIndex| 
		(self reifiedSlotAt: anIndex) isNilOop
			ifFalse: [ res add: (self reifiedSlotAt: anIndex) ] ].
	^ res