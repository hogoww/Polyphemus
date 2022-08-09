query
allReferencers
	| references |
	references := OrderedCollection new.
	memory do: [ :anOop | 
		(anOop allSlots anySatisfy: [ :aSlot | aSlot = self ]) ifTrue: [ references add: anOop ].
		].
	^ references