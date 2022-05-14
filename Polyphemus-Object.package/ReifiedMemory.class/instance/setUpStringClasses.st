initialization
setUpStringClasses
	" This is mostly guess work."
	|  stringClassAddress |
	stringClasses add: memory classString.
	stringClassAddress := isCandleImage
		ifFalse: [ memory superclassOf: memory classString ]
		ifTrue: [ memory classString ].
	stringClasses addAll: (self allClassesOop
		select: [ :aClass | 
			aClass oopSuperclass = stringClassAddress 
			or: [ aClass oopSuperclass isNilOop not
				and: [ aClass oopSuperclass oopSuperclass = stringClassAddress ]]]).