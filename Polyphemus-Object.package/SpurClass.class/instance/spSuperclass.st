accessing
spSuperclass
	| superclassOrNil |
	superclassOrNil := self slotAt: self slotIndexForSuperclass.
	^ superclassOrNil spIsNil
		ifTrue: [ superclassOrNil ]
		ifFalse: [ superclassOrNil asSpurClass ]