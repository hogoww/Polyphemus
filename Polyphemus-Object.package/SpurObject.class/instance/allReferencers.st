querying
allReferencers
	| references |
	references := OrderedCollection new.
	self memory allObjectsDo: [ :anOop | | spurObject | 
		spurObject := self class on: anOop memory: image.
		(spurObject allSlots anySatisfy: [ :aSlot | aSlot = self ]) ifTrue: [ references add: spurObject ].
		].
	^ references