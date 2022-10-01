build
checkIndexable

	(oopFormat between: 10 and: 23) ifFalse: [ ^ self ].

	(oopFormat between: memory firstLongFormat and: 11) ifTrue: [ 
		oopNumberOfSlots := oopNumberOfSlots + 1 // 2.
		oopFormat := oopFormat + (oopNumberOfSlots bitAnd: 1).
		^ self ].
	
	(oopFormat between: memory firstShortFormat and: 15) ifTrue: [ 
		oopNumberOfSlots := oopNumberOfSlots + 3 // 4.
		oopFormat := oopFormat + (4 - oopNumberOfSlots bitAnd: 3).
		^ self ].

	(oopFormat between: memory firstByteFormat and: 23) ifFalse: [ ^ self ].
	oopNumberOfSlots := oopNumberOfSlots + 7 // 8.
	oopFormat := oopFormat + (8 - oopNumberOfSlots bitAnd: 7).