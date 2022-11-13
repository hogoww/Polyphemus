running
setUp
	resource := self resourceClass.
	self mutatesResource 
		ifTrue: [ self setUpCopy ]
		ifFalse: [ self setUpImmutable ]