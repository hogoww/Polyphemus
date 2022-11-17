finding
preFindClassNamed: aString
	"Looks for a class with name aString, but before the memory has been initialized"
	stringClassIndexes isEmpty ifTrue: [ 
		self error: 'Cannot find a class by name if we cannot decode name' ].
	
	memory classTableEntriesDo: [ :aClassTableAddress :anIndex | | class |
		(OOPClassInstanceSideObject canHandle: aClassTableAddress memory: self)
			ifTrue:[
				class := OOPClassInstanceSideObject on: aClassTableAddress memory: self.
				(OOPString on: (class slotAt: class slotIndexForClassName) memory: memory) asString = aString
					ifTrue: [ ^ anIndex ]]].
		
	NotFound signal