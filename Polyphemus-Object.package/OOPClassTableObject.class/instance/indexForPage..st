testing
indexForPage: anAddress
	classTablePages doWithIndex: [ :aClassTablePage :i |
		aClassTablePage = anAddress 
			ifTrue: [ ^ i ] ].
	^ 0