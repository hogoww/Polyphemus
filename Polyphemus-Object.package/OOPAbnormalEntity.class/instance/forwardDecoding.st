as yet unclassified
forwardDecoding

	| collect |
	collect := OrderedCollection new.
	self allObjectsFrom: address to: (address + size) - 1 do: [ :anOop | 
		collect add: (OOPAbstractEntity instantiateObject: anOop on: memory) ].
	couldBeObjLists add: collect.