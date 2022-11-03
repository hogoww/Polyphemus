initialization
setUpStringClasses
	" This is mostly guess work."
	|  stringClassAddress stringClasses |
	stringClasses := Set new.
	stringClasses add: memory classString.
	self isSimulator ifTrue: [ ^ self "There most likely is no string classes instanciated" ].
	stringClassAddress := mode stringClassAddressFor: memory.
	
	memory classTableEntriesDo: [ :aClassTableAddress :anIndex |
		((memory superclassOf: aClassTableAddress) = stringClassAddress 
			or: [ ((memory superclassOf: aClassTableAddress) ~= memory nilObject)
				and: [ (memory superclassOf: (memory superclassOf: aClassTableAddress)) = stringClassAddress ]])
					ifTrue: [ stringClasses add: aClassTableAddress ]].

	stringClasses collect: [ :anOop | memory rawHashBitsOf: anOop ] into: stringClassIndexes