initialization
setUpStringClasses
	" This is mostly guess work."
	| stringClassObject stringClassName stringClassAddress |
	stringClasses add: memory classString.
	stringClassObject := self reifyOop: memory classString.
	stringClassName := OOPString on: (stringClassObject slotAt: stringClassObject slotIndexForClassName) memory: memory.
	stringClassAddress := (stringClassName asString findString: 'Byte') = 0
		ifFalse: [ stringClassObject oopSuperclass address ]
		ifTrue: [ memory classString ].
	stringClasses addAll: (self classesOop
		select: [ :aClass | (memory superclassOf: aClass) = stringClassAddress 
			or: [  ((memory superclassOf: aClass) = memory nilObject) not and: [ (memory superclassOf: (memory superclassOf: aClass)) = stringClassAddress  ]]]).