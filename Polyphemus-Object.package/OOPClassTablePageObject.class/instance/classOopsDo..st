iterating
classOopsDo: aBlock
	self allReifiedSlots do: [ :aClassOop |
		aClassOop isNilOop ifFalse: [ 
			aBlock value: aClassOop
			]
		]