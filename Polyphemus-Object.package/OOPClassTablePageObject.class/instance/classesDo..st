inspection
classesDo: aBlock
	self allSlots do: [ :aClassOop |
		aClassOop isNilOop ifFalse: [ 
			aBlock value: aClassOop
			]
		]