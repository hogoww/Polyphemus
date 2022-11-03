reifying
reifyAllOopsWithUI
	UIManager default
		displayProgress: 'Reifying Memory'
		from: memory nilObject to: memory endOfMemory
		during:
			[ :job |
	[ memory allObjectsDo: [ :anOop | 
			job value: anOop.
			job title: 'Generating Object at address: ' , anOop printString.
			self objectAt: anOop put: (OOPAbstractEntity instantiateObject: anOop on: self) ] 
		]
		on: Error
		do: [:e |
			job value: e oop.
			job title: 'Generating Objects with visitor, flying blind'.
			lastKnownObject := self findObjectBefore: e oop.
			flagErrorObjects := true.
			self reifyMemoryThroughRoots ].

	   flagErrorFreeTree ifTrue: [ self reconstructFreeLists  ].
		memory allFreeObjectsDo: [ :anOop |
			job value: anOop.
			job title: 'Generating Free Object at address: ' , anOop printString.
			self objectAt: anOop put: (OOPFreeObject on: anOop memory: self) 
		].]
