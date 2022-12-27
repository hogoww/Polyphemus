printing
storeOn: aStream

	"Use the literal form if possible."

	self isNilOop ifTrue: [ aStream nextPutAll: 'nil' ].
	self oopClassName = 'Array' ifTrue: [ 
		self shouldBePrintedAsLiteral
			ifTrue: [ 
				aStream
					nextPut: $#;
					nextPut: $(.
				1 to: self numSlots do: [ :index | 
					index = 1 ifFalse: aStream space.
					(self reifiedSlotAt: index) storeOn: aStream ].
				aStream nextPut: $) ]
			ifFalse: [ super storeOn: aStream ] ]