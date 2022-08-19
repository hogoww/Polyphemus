testing
indexForPage: anAddress
	self allClassTablePages doWithIndex: [ :aClassTablePage :i |
		aClassTablePage = anAddress 
			ifTrue: [ ^ i ] ].
	^ 0