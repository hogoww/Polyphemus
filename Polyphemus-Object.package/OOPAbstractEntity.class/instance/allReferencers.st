query
allReferencers
	| references |
	references := OrderedCollection new.
	memory allReifiedObjectsDo: [ :anOop | 
		(anOop allSlots anySatisfy: [ :aSlot | aSlot = self ]) ifTrue: [ references add: anOop ].
		].
	^ references