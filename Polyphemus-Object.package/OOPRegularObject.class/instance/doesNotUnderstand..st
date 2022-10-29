printing
doesNotUnderstand: aMessage
	aMessage selector = #doesNotUnderstand: ifTrue: [ ^ nil ].
	(aMessage selector isUnary and: [ self slotNamed: aMessage selector ]) 
		ifTrue: [ ^ aMessage slotNamed: aMessage selector].
	super doesNotUnderstand: aMessage