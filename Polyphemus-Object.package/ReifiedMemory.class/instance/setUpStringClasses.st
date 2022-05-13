initialization
setUpStringClasses
	" This is mostly guess work."
	stringClasses add: memory classString.
	stringClasses addAll: (self classesOop
		select: [ :aClass | (memory superclassOf: aClass) = memory classString ]).