instance creation
on: address image: anImage
	self class = AbstractSpurEntity ifTrue: [ self error: 'Cannot instanciate AbstractSpurEntity, I am abstract !' ].
	^self new
		address: address;
		image: anImage;
		yourself