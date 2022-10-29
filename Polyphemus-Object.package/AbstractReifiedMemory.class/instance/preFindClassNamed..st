finding
preFindClassNamed: aString
	"Looks for a class with name aString, but before the memory has been initialized
	Every class that is created is cleaned up after.
	This is because Traits require to find the class, but if they are already refiied as classes...
	This is particularly an issue for lazyly reified memory"
	stringClassIndexes isEmpty ifTrue: [ 
		self error: 'Cannot find a class by name if we cannot decode name' ].

	memory classTableEntriesDo: [ :aClassTableAddress :anIndex |	| name |
		name := (self reifyOop: aClassTableAddress) oopName asString.
		self objectAt: aClassTableAddress put: nil.
		name = aString ifTrue: [ ^ aClassTableAddress ]. ].
		
	NotFound signal