accessing
firstSelectorIndex
	| currentIndex found |
	currentIndex := 1.
	found := nil.
	[ currentIndex + 2 < self numberOfSlots and: [ found isNil ] ]
		whileTrue: [ | object |
			(object := (self reifiedSlotAt: currentIndex + 2)) spIsNil
				ifTrue: [ currentIndex := currentIndex + 1 ]
				ifFalse: [ found := object. ^currentIndex ]. ].
	^ nil