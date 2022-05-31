finding
preFindClassNamed: aString
	memory classTableEntriesDo: [ :aClassTableAddress :anIndex |
		(self reifyOop: aClassTableAddress) oopClassName asString = aString 
			ifTrue: [ ^ aClassTableAddress ]
		].