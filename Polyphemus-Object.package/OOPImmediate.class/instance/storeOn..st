printing
storeOn: aStream

		self address value < 0 ifTrue: [ aStream space ].
		self printOn: aStream.