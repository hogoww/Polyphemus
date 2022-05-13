enumerating
allClassAddresses
	| res |
	res := OrderedCollection new.
	1 to: self numSlots do:[ :anIndex| 
		(self slotAt: anIndex) = memory nilObject
			ifFalse: [ res add: (self slotAt: anIndex) ] ].
	^ res