printing
storeOn: aStream

		self address value < 0 ifTrue: [ aStream space ].
		self isCharacterOop ifTrue: [ aStream nextPut: $$ ].
		self printOn: aStream.