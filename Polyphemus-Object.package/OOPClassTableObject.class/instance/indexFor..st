testing
indexFor: anAddress
	1 to: self numSlots do: [ :i |
		(self slotAt: i) = anAddress 
			ifTrue: [ ^ i ] ].
	^ 0