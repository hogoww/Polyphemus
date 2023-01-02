iterating
classOopsDo: aBlock
	self allSlots do: [ :aClassOop |
		aClassOop isNilOop ifFalse: [ 
			aBlock value: aClassOop
			]
		]