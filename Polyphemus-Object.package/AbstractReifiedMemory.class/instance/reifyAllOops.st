initialization
reifyAllOops
	[ memory allObjectsDo: [ :anOop | 
			self objectAt: anOop put: (OOPAbstractEntity instantiateObject: anOop on: self) ] 
		]
		on: Error
		do: [:e |
			lastKnownObject := self findObjectBefore: e oop.
			flagErrorObjects := true.
			self reifyMemoryThroughRoots ].

		memory allFreeObjectsDo: [ :anOop |
			self objectAt: anOop put: (OOPFreeObject on: anOop memory: self) 
		].