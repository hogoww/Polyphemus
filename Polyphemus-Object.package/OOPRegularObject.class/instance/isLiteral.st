testing
isLiteral
	self isNilOop ifTrue: [ ^true ].
	self oopClassName = 'Array' ifTrue: [ 
		self do: [ :each | each isLiteral ifFalse: [ ^ false ] ].
		^ true ].
	self oopClassName = 'ByteArray' ifTrue: [ 
		self error: 'Not implemented yet' ].
	^ false