querying
indexForClass: aClassOop
	self allReifiedSlots doWithIndex: [ :o :i |
		aClassOop = o ifTrue: [ 	^ i ]
		].
	^ 0