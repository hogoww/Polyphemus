accessing
allOopSlotNames
	| superClassSlotsNames |
	superClassSlotsNames := self oopSuperclass isNotNilOop ifTrue: [ self oopSuperclass allOopSlotNames ] ifFalse: [ #() ].
	^ self oopSlotNames addAllFirst: superClassSlotsNames ; yourself.
	