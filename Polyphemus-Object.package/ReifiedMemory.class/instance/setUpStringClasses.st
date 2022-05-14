initialization
setUpStringClasses
	" This is mostly guess work."
	|  stringClassAddress |
	stringClasses add: memory classString.
	stringClassAddress := isCandleImage
		ifFalse: [ memory superclassOf: memory classString ]
		ifTrue: [ memory classString ].
	stringClasses addAll: (self allClassesOopAddresses
		select: [ :aClass | (memory superclassOf: aClass) = stringClassAddress 
			or: [ ((memory superclassOf: aClass) ~= memory nilObject)
				and: [ (memory superclassOf: (memory superclassOf: aClass)) = stringClassAddress  ]]]).