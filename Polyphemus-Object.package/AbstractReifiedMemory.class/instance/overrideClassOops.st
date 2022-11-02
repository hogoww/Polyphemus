initialization
overrideClassOops
	self reifiedClassTable classesDo: [ :aClass | | handler |
		handler := OOPAbstractClass allSubclasses detect: [ :anHandler | anHandler canHandle: aClass address memory: self ].
		self objectAt: aClass address put: (handler on: aClass address memory: self)
		].