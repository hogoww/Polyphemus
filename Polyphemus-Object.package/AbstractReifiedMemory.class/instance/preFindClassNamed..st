finding
preFindClassNamed: aString

	stringClasses isEmpty ifTrue: [ 
		self error: 'Cannot find a class by name if we cannot decode name' ].
	
	memory classTableEntriesDo: [ :aClassTableAddress :anIndex | 
		(self reifyOop: aClassTableAddress) oopClassName asString = aString 
			ifTrue: [ ^ aClassTableAddress ] ].
		
	self error: 'No corresponding class found'.