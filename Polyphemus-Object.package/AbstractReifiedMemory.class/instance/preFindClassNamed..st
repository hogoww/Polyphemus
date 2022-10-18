finding
preFindClassNamed: aString
	"Looks for a class with name aString, but before the memory has been initialized"
	stringClassIndexes isEmpty ifTrue: [ 
		self error: 'Cannot find a class by name if we cannot decode name' ].

	memory classTableEntriesDo: [ :aClassTableAddress :anIndex |		
		(self reifyOop: aClassTableAddress) oopClassName asString = aString 
			ifTrue: [ ^ aClassTableAddress ] ].
		
	NotFound signal