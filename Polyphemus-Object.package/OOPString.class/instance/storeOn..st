printing
storeOn: aStream

	self isSymbol ifTrue: [ ^ self asString asSymbol storeOn: aStream ].
	^ self asString storeOn: aStream