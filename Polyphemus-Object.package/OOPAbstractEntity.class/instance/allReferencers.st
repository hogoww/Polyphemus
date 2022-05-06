query
allReferencers
	| references |
	references := OrderedCollection new.
	memory allObjectsDo: [ :anOop | | spurObject | 
		spurObject := self class newFor: anOop memory: memory.
		(spurObject allSlots anySatisfy: [ :aSlot | aSlot = self ]) ifTrue: [ references add: spurObject ].
		].
	^ references