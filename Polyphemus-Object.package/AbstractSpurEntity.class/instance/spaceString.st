accessing
spaceString
	self isOldOop ifTrue: [ ^ 'Old Space' ].
	^ 'new Space'