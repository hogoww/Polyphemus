build
checkIndexable

	(oopFormat between: 10 and: 23) ifFalse: [ ^ self ].

	(oopFormat between: memory firstLongFormat and: 11) ifTrue: [ 
		oopFormat := oopFormat + (oopNumberOfSlots bitAnd: 1).
		oopNumberOfSlots := oopNumberOfSlots + 1 // 2.
		^ self ].
	
	(oopFormat between: memory firstShortFormat and: 15) ifTrue: [ 
		oopFormat := oopFormat + (4 - oopNumberOfSlots bitAnd: 3).
		oopNumberOfSlots := oopNumberOfSlots + 3 // 4.
		^ self ].

	(oopFormat between: memory firstByteFormat and: 23) ifFalse: [ ^ self ].
	oopFormat := oopFormat + (8 - oopNumberOfSlots bitAnd: 7).
	oopNumberOfSlots := oopNumberOfSlots + 7 // 8.