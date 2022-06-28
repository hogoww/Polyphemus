as yet unclassified
reverseDecoding

	| couldBeObjAddress foundOop limit |
	foundOop := OrderedCollection new.
	1 to: size do: [ :index | 
		couldBeObjAddress := address + size - index.
		foundOop
			ifEmpty: [ limit := address + size ]
			ifNotEmpty: [ limit := foundOop last address ].
		([ self couldBeObject: couldBeObjAddress limit: limit ] onErrorDo: [ 
			 false ]) ifTrue: [ 
			foundOop add:
				(OOPAbstractEntity instantiateObject: couldBeObjAddress on: memory) ] ].
	couldBeObjLists add: foundOop