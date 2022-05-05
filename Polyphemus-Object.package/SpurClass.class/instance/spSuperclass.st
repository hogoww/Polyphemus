accessing
spSuperclass
	| superclassOrNil |
	superclassOrNil := self reifiedSlotAt: self slotIndexForSuperclass.
	^ superclassOrNil spIsNil
		ifTrue: [ superclassOrNil ]
		ifFalse: [ superclassOrNil asSpurClass ]