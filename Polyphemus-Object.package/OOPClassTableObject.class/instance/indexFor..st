testing
indexFor: anAddress
	self allClassTablePages doWithIndex: [ :aClassTablePage :i |
		aClassTablePage = anAddress 
			ifTrue: [ ^ i ] ].
	^ 0