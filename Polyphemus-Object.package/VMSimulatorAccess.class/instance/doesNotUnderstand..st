reflective operations
doesNotUnderstand: aMessage
	(memory class canUnderstand: aMessage selector) ifFalse: [ super doesNotUnderstand: aMessage ].
	^ aMessage sendTo: memory