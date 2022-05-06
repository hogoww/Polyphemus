instance creation
on: address memory: aMemory
	self class = OOPAbstractEntity ifTrue: [ self error: 'Cannot instanciate AbstractSpurEntity, I am abstract !' ].
	^self new
		address: address;
		memory: aMemory;
		yourself