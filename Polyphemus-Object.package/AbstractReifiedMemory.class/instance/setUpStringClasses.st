initialization
setUpStringClasses
	" This is mostly guess work."
	|  stringClassAddress |
	stringClasses add: memory classString.
	self isSimulator ifTrue: [ ^ self "There most likely is no string classes instanciated" ].
	stringClassAddress := self isCandleImage
		ifFalse: [ memory superclassOf: memory classString ]
		ifTrue: [ memory classString ].
	
	memory classTableEntriesDo: [ :aClassTableAddress :anIndex |
		((memory superclassOf: aClassTableAddress) = stringClassAddress 
			or: [ ((memory superclassOf: aClassTableAddress) ~= memory nilObject)
				and: [ (memory superclassOf: (memory superclassOf: aClassTableAddress)) = stringClassAddress  ]])
					ifTrue: [ stringClasses add: aClassTableAddress ]].