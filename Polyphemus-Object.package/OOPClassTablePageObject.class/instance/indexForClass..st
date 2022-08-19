querying
indexForClass: aClassOop
	self allSlots doWithIndex: [ :o :i |
		aClassOop = o ifTrue: [ 	^ i ]
		].
	^ 0