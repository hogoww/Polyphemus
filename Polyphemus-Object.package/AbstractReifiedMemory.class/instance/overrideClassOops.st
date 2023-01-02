initialization
overrideClassOops
	| handlers | 
	handlers := OrderedCollection new.
	metaclassForTraitIndex ifNotNil:[ 	
		handlers addAll: OOPClassClassSideObject subclasses.
		handlers addAll: OOPClassInstanceSideObject subclasses.
	].
	handlers add: OOPClassClassSideObject.
	handlers add: OOPClassInstanceSideObject.
	
	self reifiedClassTable classOopsDo: [ :aClass | | handler |
		handler := handlers detect: [ :anHandler | anHandler canHandle: aClass address memory: self ].
		self objectAt: aClass address put: (handler on: aClass address memory: self)
		].