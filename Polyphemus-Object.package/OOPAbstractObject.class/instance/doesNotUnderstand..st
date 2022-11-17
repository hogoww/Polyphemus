printing
doesNotUnderstand: aMessage
	aMessage selector = #doesNotUnderstand: ifTrue: [ ^ nil ].
	(aMessage selector isUnary and: [ (self oopSlotNamed: aMessage selector) isNotNil ]) 
		ifTrue: [ ^ self oopSlotNamed:aMessage selector ].
	super doesNotUnderstand: aMessage