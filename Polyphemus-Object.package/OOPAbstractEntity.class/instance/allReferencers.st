query
allReferencers
	| references |
	references := OrderedCollection new.
	memory allObjectsDo: [ :anOop | | oopObject | 
		oopObject := self class newFor: anOop memory: memory.
		(oopObject allSlots anySatisfy: [ :aSlot | aSlot = self ]) ifTrue: [ references add: oopObject ].
		].
	^ references