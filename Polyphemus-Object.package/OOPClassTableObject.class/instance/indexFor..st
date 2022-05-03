testing
indexFor: anAddress
	self allSlots doWithIndex: [ :s :i | 
		s address = anAddress 
			ifTrue: [ ^ i ] ].
	^ 0